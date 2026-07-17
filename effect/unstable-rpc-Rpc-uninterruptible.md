Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.uninterruptible

Wraps a response Effect or Stream so the RPC server runs it in an uninterruptible region.

**Signature**

```ts
declare const uninterruptible: <A extends object>(value: A) => Wrapper<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Rpc.ts#L1254)

Since v4.0.0