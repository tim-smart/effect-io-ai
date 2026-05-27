Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.SuccessExit

Extracts the decoded success value carried by an RPC exit.

**Details**

For streaming RPCs, the immediate exit success is `void` because stream
elements are delivered separately.

**Signature**

```ts
type SuccessExit<R> = Success<R> extends infer T ? T extends Stream<infer _A, infer _E, infer _Env> ? void : T
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L368)

Since v4.0.0