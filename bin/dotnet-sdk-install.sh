set -e

version="${1:-3.1}"
path=$(dirname $(which dotnet))

echo 'installing dotnet sdk'
echo 'Version:  ' $version
echo 'Location: ' $path

curl -sSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --channel $version --install-dir $path

echo ''
