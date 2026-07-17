Package: `@effect/platform-node`<br />
Module: `NodeClusterSocket`<br />

## NodeClusterSocket.layerK8sHttpClient

Provides a `K8sHttpClient` backed by the Undici HTTP client and the
Kubernetes-aware dispatcher.

**Signature**

```ts
declare const layerK8sHttpClient: Layer.Layer<K8sHttpClient.K8sHttpClient, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeClusterSocket.ts#L172)

Since v4.0.0