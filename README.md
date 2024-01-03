# kalemiller.com

## Proxy
All website traffic is fronted by Caddy. This allows us to run muliple applications,
with different subdomains, all under the same VM. If you want to edit this 
configuration see the `Caddyfile`.

Caddy is run via a docker container. To run the proxy:

```bash
./proxy.sh
```

There is some special mounting etc. done in this script. In particular, it mounts
directories we care about.

## Blog
My blog is stored under the `blog/` path. This is built by my CD pipeline in the blog
repository. It is automatically served as a static site by Caddy. See the `Caddyfile` 
for more information.
