Package: `effect`<br />
Module: `RpcGroup`<br />

## RpcGroup.HandlersFrom

Builds the object type of server handler functions required to implement each
RPC in a union.

**Signature**

```ts
type HandlersFrom<Rpc> = {
  readonly [Current in Rpc as Current["_tag"]]: Rpc.ToHandlerFn<Current>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RpcGroup.ts#L187)

Since v4.0.0