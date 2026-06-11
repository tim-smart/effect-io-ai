Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.ErrorExitSchema

Extracts the error schema used in an RPC exit.

**Details**

For streaming RPCs, this includes both the stream error schema and the RPC
error schema; otherwise it is the RPC error schema.

**Signature**

```ts
type ErrorExitSchema<R> = SuccessSchema<R> extends RpcSchema.Stream<infer _A, infer _E> ? _E | ErrorSchema<R>
  : ErrorSchema<R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L390)

Since v4.0.0