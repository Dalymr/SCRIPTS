zcurl -so wazuh-agent.deb https://packages.wazuh.com/4.x/apt/pool/main/w/wazuh-agent/wazuh-agent_4.1.5-1_amd64.deb && sudo WAZUH_MANAGER='10.0.0.90' WAZUH_AGENT_GROUP='default' dpkg -i ./wazuh-agent.deb

update-rc.d wazuh-agent defaults 95 10

service wazuh-agent start

tail -f /dev/null

