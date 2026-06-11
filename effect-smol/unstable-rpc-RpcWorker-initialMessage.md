Package: `effect`<br />
Module: `RpcWorker`<br />

## RpcWorker.initialMessage

Reads the protocol initial message and decodes it with the supplied schema,
failing if no initial message is available or decoding fails.

**Signature**

```ts
declare const initialMessage: <S extends Schema.Top>(schema: S) => Effect.Effect<S["Type"], NoSuchElementError | Schema.SchemaError, Protocol | S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcWorker.ts#L111)

Since v4.0.0