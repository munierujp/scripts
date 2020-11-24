MAC_HARDWARE_INFO=$(system_profiler -json SPHardwareDataType | jq '.SPHardwareDataType[0]')
MAC_SOFTWARE_INFO=$(system_profiler -json SPSoftwareDataType | jq '.SPSoftwareDataType[0]')
MAC_MACHINE_NAME=$(echo $MAC_HARDWARE_INFO | jq --raw-output '.machine_name')
MAC_MACHINE_MODEL=$(echo $MAC_HARDWARE_INFO | jq --raw-output '.machine_model')
MAC_CPU_TYPE=$(echo $MAC_HARDWARE_INFO | jq --raw-output '.cpu_type')
MAC_CPU_SPEED=$(echo $MAC_HARDWARE_INFO | jq --raw-output '.current_processor_speed')
MAC_MEMORY=$(echo $MAC_HARDWARE_INFO | jq --raw-output '.physical_memory')
MAC_OS_VERSION=$(echo $MAC_SOFTWARE_INFO | jq --raw-output '.os_version')
ZSH_VERSION=$(zsh --version)
HOMEBREW_VERSION=$(brew --version)
GIT_VERSION=$(git --version)
DOCKER_VERSION=$(docker --version)
NODE_VERSION=$(node --version)
NPM_VERSION=$(npm --version)
YARN_VERSION=$(yarn --version)
GO_VERSION=$(go version)

echo "# Hardware"
echo "Model: ${MAC_MACHINE_NAME} (${MAC_MACHINE_MODEL})"
echo "CPU: ${MAC_CPU_TYPE} ${MAC_CPU_SPEED}"
echo "Memory: ${MAC_MEMORY}"
echo "# Softwares"
echo $MAC_OS_VERSION
echo $ZSH_VERSION
echo $HOMEBREW_VERSION
echo $GIT_VERSION
echo $DOCKER_VERSION
echo "node ${NODE_VERSION}"
echo "npm v${NPM_VERSION}"
echo "yarn v${YARN_VERSION}"
echo $GO_VERSION
