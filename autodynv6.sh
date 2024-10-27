#!/bin/sh -e

hostname="NAME.dynv6.net"
file="${HOME}/.dynv6.addr6"
token="TOKEN KEY"

if command -v curl > /dev/null; then
  bin="curl -fsS"
else
  if command -v wget > /dev/null; then
    bin="wget -q -O -" 
  else
    echo "Neither curl nor wget found"
    exit 1
  fi
fi

[ -f "$file" ] && old=$(cat "$file")

current="auto"

if [ "$old" = "$current" ]; then
  echo "No change in IPv6 address, no update needed"
  exit
fi

# Envia direcciones pal renew
$bin "http://dynv6.com/api/update?hostname=$hostname&ipv6=$current&token=$token"
$bin "http://ipv4.dynv6.com/api/update?hostname=$hostname&ipv4=auto&token=$token"

echo "$current" > "$file"
echo "Addresses updated successfully"
