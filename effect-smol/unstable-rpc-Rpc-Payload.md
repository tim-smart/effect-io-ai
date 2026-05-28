Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.Payload

Extracts the decoded payload type from an `Rpc`.

**Signature**

```ts
type Payload<R> = R extends Rpc<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ? _Payload["Type"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L469)

Since v4.0.0