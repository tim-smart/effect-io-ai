Package: `effect`<br />
Module: `RpcWorker`<br />

## RpcWorker.makeInitialMessage

Runs an effect, encodes its result with the schema's JSON codec, and returns
the encoded value together with collected transferables.

**Signature**

```ts
declare const makeInitialMessage: <S extends Schema.Constraint, E, R2>(schema: S, effect: Effect.Effect<S["Type"], E, R2>) => Effect.Effect<readonly [data: unknown, transferables: ReadonlyArray<globalThis.Transferable>], E | Schema.SchemaError, S["EncodingServices"] | R2>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RpcWorker.ts#L67)

Since v4.0.0