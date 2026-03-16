Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.fork

You can use `fork` to wrap a response Effect or Stream, to ensure that the
response is executed concurrently regardless of the RpcServer concurrency
setting.

**Signature**

```ts
declare const fork: <A extends object>(value: A) => Wrapper<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L849)

Since v4.0.0