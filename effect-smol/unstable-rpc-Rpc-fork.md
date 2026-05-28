Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.fork

Wraps a response Effect or Stream so the RPC server executes it concurrently
regardless of the server concurrency setting.

**Signature**

```ts
declare const fork: <A extends object>(value: A) => Wrapper<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L1279)

Since v4.0.0