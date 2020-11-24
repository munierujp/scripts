echo "# Hardware"

MAC_HARDWARE_INFO=$(system_profiler -json SPHardwareDataType | jq '.SPHardwareDataType[0]')
MAC_MACHINE_NAME=$(echo $MAC_HARDWARE_INFO | jq --raw-output '.machine_name')
MAC_MACHINE_MODEL=$(echo $MAC_HARDWARE_INFO | jq --raw-output '.machine_model')
echo "Model: ${MAC_MACHINE_NAME} (${MAC_MACHINE_MODEL})"

# CPU
MAC_CPU_TYPE=$(echo $MAC_HARDWARE_INFO | jq --raw-output '.cpu_type')
MAC_CPU_SPEED=$(echo $MAC_HARDWARE_INFO | jq --raw-output '.current_processor_speed')
echo "CPU: ${MAC_CPU_TYPE} ${MAC_CPU_SPEED}"

# Memory
MAC_MEMORY=$(echo $MAC_HARDWARE_INFO | jq --raw-output '.physical_memory')
echo "Memory: ${MAC_MEMORY}"

echo "# Softwares"

# macOS
MAC_SOFTWARE_INFO=$(system_profiler -json SPSoftwareDataType | jq '.SPSoftwareDataType[0]')
MAC_OS_VERSION=$(echo $MAC_SOFTWARE_INFO | jq --raw-output '.os_version')
echo $MAC_OS_VERSION

# zsh
ZSH_VERSION=$(zsh --version)
echo $ZSH_VERSION

# Homebrew
HOMEBREW_VERSION=$(brew --version)
echo $HOMEBREW_VERSION

# Git
GIT_VERSION=$(git --version)
echo $GIT_VERSION

# Docker
DOCKER_VERSION=$(docker --version)
echo $DOCKER_VERSION

# Node.js
NODE_VERSION=$(node --version)
echo "node ${NODE_VERSION}"

# npm
NPM_VERSION=$(npm --version)
echo "npm v${NPM_VERSION}"

# yarn
YARN_VERSION=$(yarn --version)
echo "yarn v${YARN_VERSION}"

# Go
GO_VERSION=$(go version)
echo $GO_VERSION
