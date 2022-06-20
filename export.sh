MODEL=centernet_resnet50_v1_fpn_512x512_coco17_tpu-8
EXPERIMENT=run1
PIPELINE_CONFIG_PATH=/home/ubuntu/printer_phone_project/models/${MODEL}/${EXPERIMENT}/pipeline.config
MODEL_DIR=/home/ubuntu/printer_phone_project/models/${MODEL}/${EXPERIMENT}/
TRAIN_CHECKPOINT_DIR=/home/ubuntu/printer_phone_project/models/${MODEL}/${EXPERIMENT}/
EXPORT_DIR=/home/ubuntu/printer_phone_project/exported_models/${MODEL}/${EXPERIMENT}/

python exporter_main_v2.py \
    --input_type image_tensor \
    --pipeline_config_path ${PIPELINE_CONFIG_PATH} \
    --trained_checkpoint_dir ${TRAIN_CHECKPOINT_DIR} \
    --output_directory ${EXPORT_DIR}
    