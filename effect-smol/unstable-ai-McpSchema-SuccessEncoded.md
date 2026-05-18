Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.SuccessEncoded

Encoded success response for an RPC in `Group`, containing the original
request id and encoded result.

**Signature**

```ts
type SuccessEncoded<Group> = RpcGroup.Rpcs<
  Group
> extends infer Rpc ? Rpc extends Rpc.Rpc<
    infer _Tag,
    infer _Payload,
    infer _Success,
    infer _Error,
    infer _Middleware
  > ? {
      readonly _tag: "Success"
      readonly id: string | number
      readonly result: _Success["Encoded"]
    }
  : never
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L2079)

Since v4.0.0