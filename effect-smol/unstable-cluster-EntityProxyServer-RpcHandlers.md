Package: `effect`<br />
Module: `EntityProxyServer`<br />

## EntityProxyServer.RpcHandlers

Union of RPC handler services required to serve the proxy RPCs for an entity.

Includes both the normal prefixed RPC handler and its discard variant.

**Signature**

```ts
type RpcHandlers<Rpcs, Prefix> = Rpcs extends Rpc.Rpc<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ? Rpc.Handler<`${Prefix}.${_Tag}`> | Rpc.Handler<`${Prefix}.${_Tag}Discard`>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EntityProxyServer.ts#L146)

Since v4.0.0