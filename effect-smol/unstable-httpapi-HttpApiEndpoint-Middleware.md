Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Middleware

Extracts the middleware identifiers attached to an endpoint.

**Signature**

```ts
type Middleware<Endpoint> = Endpoint extends HttpApiEndpoint<
  infer _Name,
  infer _Method,
  infer _Path,
  infer _Params,
  infer _Query,
  infer _Payload,
  infer _Headers,
  infer _Success,
  infer _Error,
  infer _M,
  infer _MR
> ? _M
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L421)

Since v4.0.0