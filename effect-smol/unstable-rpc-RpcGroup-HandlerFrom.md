Package: `effect`<br />
Module: `RpcGroup`<br />

## RpcGroup.HandlerFrom

Extracts the server handler function type for a specific RPC tag from an RPC
union.

**Signature**

```ts
type HandlerFrom<Rpc, Tag> = Extract<Rpc, { readonly _tag: Tag }> extends
  infer Current ? Current extends Rpc.Any ? Rpc.ToHandlerFn<Current> : never : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcGroup.ts#L223)

Since v4.0.0