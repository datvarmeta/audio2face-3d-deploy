#!/bin/bash

set -e  # Dừng ngay nếu có lỗi

echo "🔧 Loading Audio2Face-3D config..."

CONFIG_PATH=${A2F_3D_CONFIG:-/app/configs/deployment_config.yaml}

if [ ! -f "$CONFIG_PATH" ]; then
    echo "❌ Không tìm thấy file cấu hình: $CONFIG_PATH"
    exit 1
fi

echo "✅ Cấu hình đang dùng: $CONFIG_PATH"
echo "🚀 Bắt đầu chạy Audio2Face-3D với model: $A2F_3D_MODEL_NAME"

python3 -m audio2face_3d \
  --config "$CONFIG_PATH" \
  --model "$A2F_3D_MODEL_NAME"