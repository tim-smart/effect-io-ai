Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.MiddlewareServices

Extracts the additional services required by middleware applied to an endpoint.

**Signature**

```ts
type MiddlewareServices<Endpoint> = Endpoint extends HttpApiEndpoint<
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
> ? _MR
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L643)

Since v4.0.0