Package: `@effect/platform-node`<br />
Module: `NodeHttpClient`<br />

## NodeHttpClient.layerNodeHttpNoAgent

Provides a node:http-backed `HttpClient` using the current `HttpAgent`
service.

**Signature**

```ts
declare const layerNodeHttpNoAgent: Layer.Layer<Client.HttpClient, never, HttpAgent>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpClient.ts#L669)

Since v4.0.0