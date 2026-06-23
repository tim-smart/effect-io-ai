Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.FailureEncoded

Encoded failure response for an RPC in `Group`, containing the original
request id and encoded error.

**Signature**

```ts
type FailureEncoded<Group> = RpcGroup.Rpcs<
  Group
> extends infer Rpc ? Rpc extends Rpc.Rpc<
    infer _Tag,
    infer _Payload,
    infer _Success,
    infer _Error,
    infer _Middleware
  > ? {
      readonly _tag: "Failure"
      readonly id: string | number
      readonly error: _Error["Encoded"]
    }
  : never
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L2268)

Since v4.0.0