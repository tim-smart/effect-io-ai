Package: `effect`<br />
Module: `RpcWorker`<br />

## RpcWorker.layerInitialMessage

Provides the `InitialMessage` service from a schema and build effect,
capturing the layer context and dying if schema encoding fails.

**Signature**

```ts
declare const layerInitialMessage: <S extends Schema.Top, R2>(schema: S, build: Effect.Effect<S["Type"], never, R2>) => Layer.Layer<InitialMessage, never, S["EncodingServices"] | R2>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcWorker.ts#L116)

Since v4.0.0