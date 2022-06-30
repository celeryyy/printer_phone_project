DATA_DIR=/content/printer_phone_project/data
LABELMAP=/content/printer_phone_project/data/label_map.pbtxt
OUTPUT_DIR=/content/printer_phone_project/data
TEST_RATIO=0.2

!python create_tf_records_voc.py \
      --data_dir="${DATA_DIR}" \
      --label_map="${LABELMAP}" \
      --test_ratio="${TEST_RATIO}" \
      --output_dir="${OUTPUT_DIR}"
