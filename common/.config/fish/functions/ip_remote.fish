function ip_remote -d "Remote IPs"
  dig +short myip.opendns.com @resolver1.opendns.com
end
