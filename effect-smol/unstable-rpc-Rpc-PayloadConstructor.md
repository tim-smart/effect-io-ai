Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.PayloadConstructor

Extracts the payload constructor input type accepted by the RPC payload
schema.

**Signature**

```ts
type PayloadConstructor<R> = R extends Rpc<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ? _Payload["~type.make.in"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L421)

Since v4.0.0