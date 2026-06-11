Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.SuccessSchema

Extracts the success schema from an `Rpc`.

**Signature**

```ts
type SuccessSchema<R> = R extends Rpc<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ? _Success
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L283)

Since v4.0.0