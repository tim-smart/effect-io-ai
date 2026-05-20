Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.SuccessChunk

Extracts the decoded stream element type from a streaming RPC, or `never` for
non-streaming RPCs.

**Signature**

```ts
type SuccessChunk<R> = Success<R> extends Stream<infer _A, infer _E, infer _Env> ? _A : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L367)

Since v4.0.0