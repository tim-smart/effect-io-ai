Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.SuccessEncoded

Extracts the encoded success value type from an `Rpc`.

**Signature**

```ts
type SuccessEncoded<R> = R extends Rpc<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ? _Success["Encoded"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L315)

Since v4.0.0