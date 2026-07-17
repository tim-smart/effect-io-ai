Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.ErrorExit

Extracts the decoded error type used by an RPC exit.

**Details**

For streaming RPCs, this includes both stream errors and RPC errors.

**Signature**

```ts
type ErrorExit<R> = Success<R> extends Stream<infer _A, infer _E, infer _Env> ? _E | Error<R> : Error<R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Rpc.ts#L402)

Since v4.0.0