Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.wrapMap

Maps the value inside an RPC wrapper, preserving wrapper options such as
`fork` and `uninterruptible`; unwrapped values are mapped directly.

**Signature**

```ts
declare const wrapMap: <A extends object, B extends object>(self: WrapperOr<A>, f: (value: A) => B) => WrapperOr<B>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Rpc.ts#L1232)

Since v4.0.0