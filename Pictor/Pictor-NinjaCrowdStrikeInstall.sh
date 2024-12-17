#!/bin/bash

GREEN='\033[0;32m'

echo -e "Downloading NinjaRMM...\n"

wget "https://github.com/RayMayer-Entara/Onboarding/blob/main/Pictor/pictorlabsmainoffice-6.0.1816-installer-x86-64.deb" -O /tmp/NinjaRMM.deb

echo -e "Marking NinjaRMM.deb as an executable...\n"

sudo chmod +x /tmp/NinjaRMM.deb

echo -e "Installing NinjaRMM...\n"

sudo dpkg -i /tmp/NinjaRMM.deb

echo -e "${GREEN}Installed NinjaRMM!\e[0m \n"

echo -e "Downloading CrowdStrike...\n"

wget https://github.com/RayMayer-Entara/Onboarding/blob/main/Pictor/falcon_sensor.deb -O /tmp/falcon_sensor.deb

echo -e "Installing CrowdStrike...\n"

sudo dpkg -i /tmp/falcon_sensor.deb

echo -e "${GREEN}Installed CrowdStrike!\e[0m \n"

echo -e "Inputting Customer ID...\n"

sudo /opt/CrowdStrike/falconctl -s --cid=D4B5A7D89D30491E96FD576D9DCFE500-1C

echo -e "${GREEN}Completed! Restarting CrowdStrike Service...\e[0m \n"

sudo systemctl start falcon-sensor

echo -e "${GREEN}Script completed. Enjoy your day!\e[0m \n"