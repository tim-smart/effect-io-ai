Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.MiddlewareClient

Extracts client-side middleware service requirements for middleware marked as
required on the client.

**Signature**

```ts
type MiddlewareClient<R> = R extends Rpc<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ? _Middleware extends { readonly requiredForClient: true } ? RpcMiddleware.ForClient<_Middleware["Identifier"]>
  : never
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L545)

Since v4.0.0