Package: `@effect/rpc`<br />
Module: `Rpc`<br />

## Rpc.uninterruptible

You can use `uninterruptible` to wrap a response Effect or Stream, to ensure
that it is executed inside an uninterruptible region.

**Signature**

```ts
declare const uninterruptible: <A extends object>(value: A) => A extends Wrapper<infer _> ? A : Wrapper<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/rpc/src/Rpc.ts#L825)

Since v1.0.0