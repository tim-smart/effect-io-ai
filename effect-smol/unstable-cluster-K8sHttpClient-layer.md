Package: `effect`<br />
Module: `K8sHttpClient`<br />

## K8sHttpClient.layer

Layer that configures `K8sHttpClient` for the in-cluster Kubernetes API.

**Details**

It targets `https://kubernetes.default.svc/api`, adds the service-account
bearer token when available, requires successful HTTP statuses, and retries
transient failures.

**Signature**

```ts
declare const layer: Layer.Layer<K8sHttpClient, never, FileSystem.FileSystem | HttpClient.HttpClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/K8sHttpClient.ts#L47)

Since v4.0.0