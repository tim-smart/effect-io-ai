Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.SuccessExitSchema

Extracts the success schema used in an RPC exit.

**Details**

For streaming RPCs, this is the stream element schema; otherwise it is the
RPC success schema.

**Signature**

```ts
type SuccessExitSchema<R> = SuccessSchema<R> extends RpcSchema.Stream<infer _A, infer _E> ? _A : SuccessSchema<R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L360)

Since v4.0.0