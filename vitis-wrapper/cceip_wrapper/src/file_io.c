#include <CL/opencl.h>
#include <CL/cl_ext.h>
#include "xclhal2.h"
#include "common.h"

unsigned long load_file_to_memory(const char *filename, char **result, uint aligned)
{
	unsigned long size = 0;
    FILE *f = fopen(filename, "rb");
    if (f == NULL) {
        *result = NULL;
        return -1; // -1 means file opening fail
    }
    fseek(f, 0, SEEK_END);
    size = ftell(f);
    fseek(f, 0, SEEK_SET);
    if(aligned){
    	*result = (char *)aligned_alloc(MEM_ALIGNMENT, ((size+1 / MEM_ALIGNMENT) + 1) * MEM_ALIGNMENT);
    } else {
    	*result = (char *)malloc(size+1);
    }
    if (size != fread(*result, sizeof(char), size, f)) {
        return -2; // -2 means file reading fail
    }
    fclose(f);
    (*result)[size] = 0;
    return size;
}

unsigned long save_memory_to_file(const char* filename, char **buf, unsigned long size){
	FILE *f = fopen(filename, "wb");
	if (f == NULL) {
	    return -1; // -1 means file opening fail
	}
	unsigned long write_size = fwrite((void *)(*buf), sizeof(char), size, f);
	fclose(f);
	return write_size;
}




