Package: `effect`<br />
Module: `HttpApiMiddleware`<br />

## HttpApiMiddleware.layerClient

Provides a client-side middleware implementation for a middleware that is required by generated clients.

**Details**

The layer captures the surrounding services and makes the middleware available
through the `ForClient` service marker used by HTTP API clients.

**Signature**

```ts
declare const layerClient: <Id extends AnyId, S, R, EX = never, RX = never>(tag: Context.Key<Id, S>, service: HttpApiMiddlewareClient<Error<Id>, Id[typeof TypeId]["clientError"], R> | Effect.Effect<HttpApiMiddlewareClient<Error<Id>, Id[typeof TypeId]["clientError"], R>, EX, RX>) => Layer.Layer<ForClient<Id>, EX, R | Exclude<RX, Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiMiddleware.ts#L454)

Since v4.0.0