Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ClientServices

Computes the services required on the client to encode endpoint requests and
decode endpoint success or error responses.

**Signature**

```ts
type ClientServices<Endpoint> = Endpoint extends ConstraintRequest ?
    | Endpoint["~Params"]["EncodingServices"]
    | Endpoint["~Query"]["EncodingServices"]
    | Endpoint["~Payload"]["EncodingServices"]
    | Endpoint["~Headers"]["EncodingServices"]
    | SuccessDecodingServices<Endpoint["~Success"]>
    | Endpoint["~Error"]["DecodingServices"]
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L534)

Since v4.0.0