#!/bin/bash
sudo -u ubuntu -i <<'EOF'
sudo apt-get update -y
sudo apt install python3.10-venv -y
python3 -m venv projectenv
source projectenv/bin/activate
git clone -q https://github.com/AhrazRizvi/CC-Project2-Distributed.git
pip install --upgrade pip
pip install --upgrade setuptools
pip install aioboto3
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
pip install requests

echo "[Unit]
Description=My App server
After=multi-user.target
StartLimitIntervalSec=0

[Service]
Type=simple
ExecStart=/home/ubuntu/projectenv/bin/python app_tier.py
WorkingDirectory=/home/ubuntu/CC-Project2-Distributed
User=ubuntu
Restart=always
RestartSec=1

[Install]
WantedBy=multi-user.target" | sudo tee /etc/systemd/system/app-server.service

sudo chmod 644 /etc/systemd/system/app-server.service
sudo systemctl start app-server
sudo systemctl enable app-server
EOF