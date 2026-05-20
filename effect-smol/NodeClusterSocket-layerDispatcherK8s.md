Package: `@effect/platform-node`<br />
Module: `NodeClusterSocket`<br />

## NodeClusterSocket.layerDispatcherK8s

Provides an Undici dispatcher for Kubernetes API calls, using the service
account CA certificate when it is available and falling back to the default
dispatcher otherwise.

**Signature**

```ts
declare const layerDispatcherK8s: Layer.Layer<NodeHttpClient.Dispatcher, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeClusterSocket.ts#L160)

Since v4.0.0