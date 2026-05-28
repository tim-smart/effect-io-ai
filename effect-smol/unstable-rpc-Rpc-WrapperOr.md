Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.WrapperOr

A value that may be returned directly or wrapped with RPC server execution
options.

**Signature**

```ts
type WrapperOr<A> = A | Wrapper<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L1209)

Since v4.0.0