Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.NotificationEncoded

Encoded notification message for an RPC in `Group`, including the method and
encoded payload without a request id.

**Signature**

```ts
type NotificationEncoded<Group> = RpcGroup.Rpcs<
  Group
> extends infer Rpc ? Rpc extends Rpc.Rpc<
    infer _Tag,
    infer _Payload,
    infer _Success,
    infer _Error,
    infer _Middleware
  > ? {
      readonly _tag: "Notification"
      readonly method: _Tag
      readonly payload: _Payload["Encoded"]
    }
  : never
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L2107)

Since v4.0.0