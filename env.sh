# macOS
MAC_VERSION=$(sw_vers -productVersion)
MAC_BUILD_VERSION=$(sw_vers -buildVersion)
echo "macOS v${MAC_VERSION} (${MAC_BUILD_VERSION})"

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
