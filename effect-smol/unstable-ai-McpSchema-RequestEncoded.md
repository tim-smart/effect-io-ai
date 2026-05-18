Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.RequestEncoded

Encoded JSON-RPC request message for an RPC in `Group`, including the request
id, method, and encoded payload.

**Signature**

```ts
type RequestEncoded<Group> = RpcGroup.Rpcs<
  Group
> extends infer Rpc ? Rpc extends Rpc.Rpc<
    infer _Tag,
    infer _Payload,
    infer _Success,
    infer _Error,
    infer _Middleware
  > ? {
      readonly _tag: "Request"
      readonly id: string | number
      readonly method: _Tag
      readonly payload: _Payload["Encoded"]
    }
  : never
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L2032)

Since v4.0.0