mkdir -p .caddy/

docker run \
	--detach \
	--name caddy \
	--rm \
	-v ./home:/var/homesite \
	-v ./blog:/var/blog \
	-v ./.caddy/config:/config \
	-v ./.caddy/data:/data \
	-v ./Caddyfile:/etc/caddy/Caddyfile \
	-p 80:80 \
	-p 443:443 \
	caddy
