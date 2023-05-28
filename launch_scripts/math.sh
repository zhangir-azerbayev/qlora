#!/bin/bash 

# configuration 
model_name_or_path=EleutherAI/pythia-12b

eval_dataset_size=128
max_train_samples=160
max_eval_samples=128
source_max_len=768
target_max_len=1028
dataset=competition_math

output_dir=./output/math
max_steps=10
learning_rate=0.0001
save_steps=10

cd /home/lily/zaa7/qlora/
CUDA_VISIBLE_DEVICES=0 python qlora.py --model_name_or_path $model_name_or_path
