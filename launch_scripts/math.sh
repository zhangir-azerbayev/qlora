#!/bin/bash 

# configuration 
model_name_or_path=bigcode/starcoder

eval_dataset_size=128
max_train_samples=7000
max_eval_samples=128
source_max_len=768
target_max_len=1028
dataset=competition_math

output_dir=./output/math
max_steps=437
learning_rate=0.0001
save_steps=437

predict_with_generate=true 
max_new_tokens=1028

do_train=true
do_eval=true
do_predict=true

# navigate to the directory containing the script
cd /home/lily/zaa7/qlora/

# run the script with the configured parameters
CUDA_VISIBLE_DEVICES=0 python qlora.py --model_name_or_path $model_name_or_path \
    --eval_dataset_size $eval_dataset_size --max_train_samples $max_train_samples \
    --max_eval_samples $max_eval_samples --source_max_len $source_max_len \
    --target_max_len $target_max_len --dataset $dataset --output_dir $output_dir \
    --max_steps $max_steps --learning_rate $learning_rate --save_steps $save_steps \
    --predict_with_generate $predict_with_generate --max_new_tokens $max_new_tokens \
    --do_eval $do_eval --do_predict $do_predict --do_train $do_train
