SCRIPT_PATH=$(readlink -f "$0")
BASE_PATH=$(dirname "$SCRIPT_PATH")

source $HOME/.cargo/env
source "$BASE_PATH/emsdk-portable/emsdk_env.sh"
export PATH="$BASE_PATH/wabt/bin:$PATH"

unset SCRIPT_PATH
unset BASE_PATH
