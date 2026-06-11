Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.ExtractRequires

Extracts the service requirements of the RPC with the specified tag.

**Signature**

```ts
type ExtractRequires<R, Tag> = R extends Rpc<
  Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ? _Requires :
  never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L697)

Since v4.0.0