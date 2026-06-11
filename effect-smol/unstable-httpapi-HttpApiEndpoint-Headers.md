Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Headers

Extracts the schema used for an endpoint's request headers.

**Signature**

```ts
type Headers<Endpoint> = Endpoint extends HttpApiEndpoint<
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
> ? _Headers
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L358)

Since v4.0.0