# vmedias Helm Charts

## Usage

```bash
helm repo add vmedias https://vmedias.github.io/helm-charts
helm repo update
```

## Charts

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
