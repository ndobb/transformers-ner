source venv/bin/activate

# Events
python3 ./run_ner.py \
    --data_dir ./data/lct_events \
    --model_type bert \
    --model_name_or_path scibert_scivocab_cased \
    --output_dir ./output/lct_events \
    --labels ./data/lct_events/labels.txt \
    --do_train \
    --do_predict \
    --max_seq_length 256 \
    --overwrite_output_dir \
    --overwrite_cache \
    --save_steps 500 \
    --num_train_epochs 5

# Entities
python3 ./run_ner.py \
    --data_dir ./data/lct_entities \
    --model_type bert \
    --model_name_or_path scibert_scivocab_cased \
    --output_dir ./output/lct_entities \
    --labels ./data/lct_entities/labels.txt \
    --do_train \
    --do_predict \
    --max_seq_length 256 \
    --overwrite_output_dir \
    --overwrite_cache \
    --save_steps 500 \
    --num_train_epochs 5

# Events - No Value
python3 ./run_ner.py \
    --data_dir ./data/lct_events_no_val \
    --model_type bert \
    --model_name_or_path scibert_scivocab_cased \
    --output_dir ./output/lct_events_no_val \
    --labels ./data/lct_events_no_val/labels.txt \
    --do_train \
    --do_predict \
    --max_seq_length 256 \
    --overwrite_output_dir \
    --overwrite_cache \
    --save_steps 500 \
    --num_train_epochs 5

# Entities - No Value
python3 ./run_ner.py \
    --data_dir ./data/lct_entities_no_val \
    --model_type bert \
    --model_name_or_path scibert_scivocab_cased \
    --output_dir ./output/lct_entities_no_val \
    --labels ./data/lct_entities_no_val/labels.txt \
    --do_train \
    --do_predict \
    --max_seq_length 256 \
    --overwrite_output_dir \
    --overwrite_cache \
    --save_steps 500 \
    --num_train_epochs 5    