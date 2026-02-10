echo "Enter the website URL to check its status:"
read url
if curl -s --head "$url" | grep "200 OK" > /dev/null; then
    echo "The website $url is up and running."
else
    echo "The website $url is down or not reachable."
fi