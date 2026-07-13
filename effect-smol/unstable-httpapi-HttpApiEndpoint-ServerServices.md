Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ServerServices

Computes the services required on the server to decode endpoint inputs and
encode endpoint success, error, and middleware error responses.

**Signature**

```ts
type ServerServices<Endpoint> = Endpoint extends ConstraintRequest ?
    | Endpoint["~Params"]["DecodingServices"]
    | Endpoint["~Query"]["DecodingServices"]
    | Endpoint["~Payload"]["DecodingServices"]
    | Endpoint["~Headers"]["DecodingServices"]
    | SuccessEncodingServices<Endpoint["~Success"]>
    | Endpoint["~Error"]["EncodingServices"]
    | HttpApiMiddleware.ErrorServicesEncode<Endpoint["~Middleware"]>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L517)

Since v4.0.0