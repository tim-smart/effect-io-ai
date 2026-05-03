Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.uninterruptible

You can use `uninterruptible` to wrap a response Effect or Stream, to ensure that it is run in an uninterruptible region.

**Signature**

```ts
declare const uninterruptible: <A extends object>(value: A) => Wrapper<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L1038)

Since v4.0.0