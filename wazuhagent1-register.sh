curl -s https://packages.wazuh.com/key/GPG-KEY-WAZUH | gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/wazuh.gpg --import && chmod 644 /usr/share/keyrings/wazuh.gpg

echo "deb [signed-by=/usr/share/keyrings/wazuh.gpg] https://packages.wazuh.com/4.x/apt/ stable main" | tee -a /etc/apt/sources.list.d/wazuh.list

apt-get update


WAZUH_MANAGER="10.0.0.90" WAZUH_REGISTRATION_SERVER="10.0.0.90" WAZUH_AGENT_GROUP="default" WAZUH_AGENT_NAME="Test-Agent-1" apt-get install wazuh-agent -y

update-rc.d wazuh-agent defaults 95 10

service wazuh-agent start

tail -f /dev/null

