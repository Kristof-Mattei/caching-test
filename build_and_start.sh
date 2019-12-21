ID=$(docker build . -q) && docker run -it -p80:80 $ID
