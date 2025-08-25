# [Caddy](https://caddyserver.com/) Backend Reverse Proxy

### [View the example public project here](https://railway.app/project/35d8d571-4313-4049-9699-4e7db7f02a2f) - Utilizes sleeping frontend and backend services with wake via the private network

Access the backend from `/api/*` on the proxy domain

The proxy configurations are done in the
[`Caddyfile`](https://github.com/brody192/reverse-proxy/blob/main/Caddyfile)
everything is commented for your ease of use!

When deploying your Reverse Proxy service it will require you to set two service
variables: **BACKEND_DOMAIN** / **BACKEND_PORT**

**Note:** You will first need to have set a fixed `PORT` variable in backend
services before deploying this template.

These are the four template variables that you will be required to fill out
during the first deployment of this service, it is highly recommended to use
[reference variables](https://docs.railway.app/guides/variables#referencing-another-services-variable).

Example:

```
BACKEND_DOMAIN = ${{Backend.RAILWAY_PRIVATE_DOMAIN}}
BACKEND_PORT = ${{Backend.PORT}}
API_TOKEN = any valid token
PORT = proxy server port
```

**Relevant Caddy documentation:**

- [The Caddyfile](https://caddyserver.com/docs/caddyfile)
- [Caddyfile Directives](https://caddyserver.com/docs/caddyfile/directives)
- [reverse_proxy](https://caddyserver.com/docs/caddyfile/directives/reverse_proxy)
