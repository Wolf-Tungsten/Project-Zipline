#include <CL/opencl.h>
#include <stdio.h>
#include <string.h>
#include "file_io.h"
#if defined(VITIS_PLATFORM) && !defined(TARGET_DEVICE)
#define STR_VALUE(arg)      #arg
#define GET_STRING(name) STR_VALUE(name)
#define TARGET_DEVICE GET_STRING(VITIS_PLATFORM)
#endif

cl_uint init_opencl_env(
    cl_platform_id *platform_id,         // platform id
    cl_device_id *device_id,             // compute device id
    cl_context *context,                 // compute context
    cl_command_queue *commands
    ){
    
    cl_int err;

    char cl_platform_vendor[1001];
    char target_device_name[1001] = TARGET_DEVICE;

    // Get all platforms and then select Xilinx platform
    cl_platform_id platforms[16];       // platform id
    cl_uint platform_count;
    cl_uint platform_found = 0;
    err = clGetPlatformIDs(16, platforms, &platform_count);
    if (err != CL_SUCCESS) {
        printf("ERROR: Failed to find an OpenCL platform!\n");
        printf("ERROR: Test failed\n");
        return EXIT_FAILURE;
    }
    printf("INFO: Found %d platforms\n", platform_count);

    // Find Xilinx Plaftorm
    for (cl_uint iplat=0; iplat<platform_count; iplat++) {
        err = clGetPlatformInfo(platforms[iplat], CL_PLATFORM_VENDOR, 1000, (void *)cl_platform_vendor,NULL);
        if (err != CL_SUCCESS) {
            printf("ERROR: clGetPlatformInfo(CL_PLATFORM_VENDOR) failed!\n");
            printf("ERROR: Test failed\n");
            return EXIT_FAILURE;
        }
        if (strcmp(cl_platform_vendor, "Xilinx") == 0) {
            printf("INFO: Selected platform %d from %s\n", iplat, cl_platform_vendor);
            *platform_id = platforms[iplat];
            platform_found = 1;
        }
    }
    if (!platform_found) {
        printf("ERROR: Platform Xilinx not found. Exit.\n");
        return EXIT_FAILURE;
    }

    // Get Accelerator compute device
    cl_uint num_devices;
    cl_uint device_found = 0;
    cl_device_id devices[16];  // compute device id
    char cl_device_name[1001];
    err = clGetDeviceIDs(*platform_id, CL_DEVICE_TYPE_ACCELERATOR, 16, devices, &num_devices);
    printf("INFO: Found %d devices\n", num_devices);
    if (err != CL_SUCCESS) {
        printf("ERROR: Failed to create a device group!\n");
        printf("ERROR: Test failed\n");
        return -1;
    }

    //iterate all devices to select the target device.
    for (cl_uint i=0; i<num_devices; i++) {
        err = clGetDeviceInfo(devices[i], CL_DEVICE_NAME, 1024, cl_device_name, 0);
        if (err != CL_SUCCESS) {
            printf("ERROR: Failed to get device name for device %d!\n", i);
            printf("ERROR: Test failed\n");
            return EXIT_FAILURE;
        }
        printf("CL_DEVICE_NAME %s\n", cl_device_name);
        if(strcmp(cl_device_name, target_device_name) == 0) {
            *device_id = devices[i];
            device_found = 1;
            printf("Selected %s as the target device\n", cl_device_name);
        }
    }

    if (!device_found) {
        printf("ERROR:Target device %s not found. Exit.\n", target_device_name);
        return EXIT_FAILURE;
    }

    // Create a compute context
    //
    *context = clCreateContext(0, 1, device_id, NULL, NULL, &err);
    if (!(*context)) {
        printf("ERROR: Failed to create a compute context!\n");
        printf("ERROR: Test failed\n");
        return EXIT_FAILURE;
    }

    // Create a command commands
    *commands = clCreateCommandQueue(*context, *device_id, CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE, &err);
    if (!(*commands)) {
        printf("ERROR: Failed to create a command commands!\n");
        printf("ERROR: code %i\n",err);
        printf("ERROR: Test failed\n");
        return EXIT_FAILURE;
    }

    return CL_SUCCESS;
}

cl_uint create_kernel(
    char* xclbin_path,
	cl_device_id *device_id,
    cl_context *context,                 // compute context
    cl_program *program,                 // compute programs
    cl_kernel *kernel                   // compute kernel
    ){

    cl_int err;
    cl_int status;
    // Create Program Objects
    // Load binary from disk
    unsigned char *kernelbinary;
    printf("INFO: loading xclbin %s\n", xclbin_path);
    cl_uint n_i0 = load_file_to_memory(xclbin_path, (char **) &kernelbinary, 0);
    if (n_i0 < 0) {
        printf("ERROR: failed to load kernel from xclbin: %s\n", xclbin_path);
        return EXIT_FAILURE;
    }

    size_t n0 = n_i0;

    *program = clCreateProgramWithBinary(*context, 1, device_id, &n0,
                                        (const unsigned char **) &kernelbinary, &status, &err);
    free(kernelbinary);

    if ((!(*program)) || (err!=CL_SUCCESS)) {
        printf("ERROR: Failed to create compute program from binary %d!\n", err);
        return EXIT_FAILURE;
    }

    // Build the program executable
    err = clBuildProgram(*program, 0, NULL, NULL, NULL, NULL);
    if (err != CL_SUCCESS) {
        size_t len;
        char buffer[2048];

        printf("ERROR: Failed to build program executable!\n");
        clGetProgramBuildInfo(*program, *device_id, CL_PROGRAM_BUILD_LOG, sizeof(buffer), buffer, &len);
        printf("%s\n", buffer);
        return EXIT_FAILURE;
    }

    // Create the compute kernel in the program we wish to run
    *kernel = clCreateKernel(*program, "cceip_kernel", &err);
    if (!kernel || err != CL_SUCCESS) {
        printf("ERROR: Failed to create compute kernel!\n");
        return EXIT_FAILURE;
    }

    return CL_SUCCESS;
}

void opencl_clean_up(
    cl_platform_id *platform_id,         // platform id
    cl_device_id *device_id,             // compute device id
    cl_context *context,                 // compute context
    cl_command_queue *commands,
    cl_program *program,                 // compute programs
    cl_kernel *kernel                   // compute kernel
){
    clReleaseProgram(*program);
    clReleaseKernel(*kernel);
    clReleaseCommandQueue(*commands);
    clReleaseContext(*context);
}
