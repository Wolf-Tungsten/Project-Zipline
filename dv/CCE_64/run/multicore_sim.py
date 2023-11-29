import os
import subprocess
from multiprocessing import Process

file_path = "/home/gaoruihao/zstd-speedtest/corpus/alice29_4kb.txt"
block_size = 1024
output_dir = "./output"

def get_seg_list():
    file_size = os.path.getsize(file_path)
    start_pos_list = []
    input_length_list = []
    remain_file_size = file_size
    start_pos = 0
    while remain_file_size > 0:
        if remain_file_size > block_size:
            start_pos_list.append(start_pos)
            input_length_list.append(block_size)
            remain_file_size -= block_size
            start_pos += block_size
        else:
            start_pos_list.append(start_pos)
            input_length_list.append(remain_file_size)
            remain_file_size = 0
    return start_pos_list, input_length_list

def run_a_block(idx, start_pos, input_length):
    simv_command = "./simv -assert nopostproc +info_off +FILEPATH=%s +INPUT_LENGTH=%d +INPUT_START_POS=%d"%(file_path, input_length, start_pos)
    print("simv_command: %s"%simv_command)
    process = subprocess.Popen(simv_command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = process.communicate()
    # 在 output_dir 中创建一个 block_{idx}.out 文件, 将 stdout 输出到该文件中
    output_file_path = os.path.join(output_dir, "block_%d.out"%idx)
    with open(output_file_path, "wb") as f:
        f.write(stdout)


if __name__ == "__main__":
    start_pos_list, input_length_list = get_seg_list()
    print("start_pos_list: %s"%start_pos_list)
    print("input_length_list: %s"%input_length_list)
    p_list = []
    for idx, (start_pos, input_length) in enumerate(zip(start_pos_list, input_length_list)):
        # 在每个进程中运行一个 block
        p = Process(target=run_a_block, args=(idx, start_pos, input_length))
        p.start()
        p_list.append(p)
    for p in p_list:
        p.join()


