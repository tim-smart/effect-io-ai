Package: `@effect/rpc`<br />
Module: `Rpc`<br />

## Rpc.fork

You can use `fork` to wrap a response Effect or Stream, to ensure that the
response is executed concurrently regardless of the RpcServer concurrency
setting.

**Signature**

```ts
declare const fork: <A>(value: A) => Fork<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/rpc/src/Rpc.ts#L764)

Since v1.0.0