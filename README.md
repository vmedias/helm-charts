# vmedias Helm Charts

## Usage

```bash
helm repo add vmedias https://vmedias.github.io/helm-charts
helm repo update
```

## Charts

### laravel-app

Generic chart for Laravel applications.

```bash
helm install my-app vmedias/laravel-app \
  --namespace my-namespace \
  -f values-staging.yaml
```

Example `values-staging.yaml`:

```yaml
name: my-app
image:
  repository: ghcr.io/vmedias/my-app
  tag: staging
ingress:
  host: my-app.dev.vmedias.fr
replicas: 2
envFrom:
  secretName: my-app-secrets
```

Pour activer le worker de queue :

```yaml
worker:
  enabled: true
  replicas: 2
```

Pour activer le scheduler (`php artisan schedule:run`) :

```yaml
scheduler:
  enabled: true
```

### nextjs-app

Generic chart for Next.js applications.

```bash
helm install my-app vmedias/nextjs-app \
  --namespace my-namespace \
  -f values-staging.yaml
```

Example `values-staging.yaml`:

```yaml
name: my-app
image:
  repository: ghcr.io/vmedias/my-app
  tag: staging
ingress:
  host: my-app.dev.vmedias.fr
replicas: 2
```
