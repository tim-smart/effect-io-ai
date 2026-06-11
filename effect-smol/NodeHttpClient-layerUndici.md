Package: `@effect/platform-node`<br />
Module: `NodeHttpClient`<br />

## NodeHttpClient.layerUndici

Provides an Undici-backed `HttpClient` together with a scoped default
Undici `Agent` dispatcher.

**Signature**

```ts
declare const layerUndici: Layer.Layer<Client.HttpClient, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpClient.ts#L372)

Since v4.0.0