Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.Middleware

Extracts the service identifiers for middleware attached to an `Rpc`.

**Signature**

```ts
type Middleware<R> = R extends Rpc<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ? Context.Service.Identifier<_Middleware>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L524)

Since v4.0.0