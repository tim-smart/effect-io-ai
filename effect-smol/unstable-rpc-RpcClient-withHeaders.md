Package: `effect`<br />
Module: `RpcClient`<br />

## RpcClient.withHeaders

Runs an effect with additional RPC client headers, merging them with the
current `CurrentHeaders` value for outgoing requests.

**Signature**

```ts
declare const withHeaders: { (headers: Headers.Input): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(effect: Effect.Effect<A, E, R>, headers: Headers.Input): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcClient.ts#L823)

Since v4.0.0