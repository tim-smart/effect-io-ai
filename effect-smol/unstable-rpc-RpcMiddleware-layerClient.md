Package: `effect`<br />
Module: `RpcMiddleware`<br />

## RpcMiddleware.layerClient

Provides the client-side implementation for an RPC middleware service,
capturing the layer's environment and merging it into each middleware
invocation.

**Signature**

```ts
declare const layerClient: <Id extends AnyId, S, R, EX = never, RX = never>(tag: Context.Key<Id, S>, service: RpcMiddlewareClient<Id[TypeId]["error"]["Type"], Id[TypeId]["clientError"], R> | Effect.Effect<RpcMiddlewareClient<Id[TypeId]["error"]["Type"], Id[TypeId]["clientError"], R>, EX, RX>) => Layer.Layer<ForClient<Id>, EX, R | Exclude<RX, Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMiddleware.ts#L351)

Since v4.0.0