Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Payload

Extracts the schema used for an endpoint's request payload.

**Signature**

```ts
type Payload<Endpoint> = Endpoint extends HttpApiEndpoint<
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
> ? _Payload
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L379)

Since v4.0.0