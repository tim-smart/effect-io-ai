Package: `effect`<br />
Module: `Runners`<br />

## Runners.makeRpcClient

Builds a runner RPC client from the current `RpcClient.Protocol`, using the
`Runners` span prefix with tracing disabled.

**Signature**

```ts
declare const makeRpcClient: Effect.Effect<RpcClient, never, Scope | RpcClient_.Protocol>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Runners.ts#L519)

Since v4.0.0