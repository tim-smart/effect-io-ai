Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.Exit

The `Exit` type produced for an RPC, using the RPC's exit success and exit
error types.

**Signature**

```ts
type Exit<R> = Exit_<SuccessExit<R>, ErrorExit<R>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Rpc.ts#L411)

Since v4.0.0