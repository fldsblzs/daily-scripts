# kind workaround for snap docker package
export TMPDIR="$HOME/.tmp"

# dotnet-ef setup
export PATH="$PATH:$HOME/.dotnet/tools/"
export DOTNET_ROOT="$HOME/.dotnet"
export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1