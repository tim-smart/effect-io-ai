Package: `@effect/platform-bun`<br />
Module: `BunClusterSocket`<br />

## BunClusterSocket.layerK8sHttpClient

Layer that provides `K8sHttpClient`, using the Kubernetes service-account CA certificate when it is available.

**Signature**

```ts
declare const layerK8sHttpClient: Layer.Layer<K8sHttpClient.K8sHttpClient, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunClusterSocket.ts#L155)

Since v4.0.0