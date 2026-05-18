Package: `@effect/platform-node`<br />
Module: `NodeHttpClient`<br />

## NodeHttpClient.dispatcherLayerGlobal

Provides the `Dispatcher` service from Undici's process-global dispatcher,
without creating or owning a new agent.

**Signature**

```ts
declare const dispatcherLayerGlobal: Layer.Layer<Dispatcher, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpClient.ts#L123)

Since v4.0.0