Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.ExtractTag

Extracts the RPC with the specified tag from an RPC union.

**Signature**

```ts
type ExtractTag<R, Tag> = R extends Rpc<
  Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ? R :
  never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Rpc.ts#L663)

Since v4.0.0