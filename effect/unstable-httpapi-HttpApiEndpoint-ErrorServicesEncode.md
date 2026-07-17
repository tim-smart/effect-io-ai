Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ErrorServicesEncode

Computes the services required to encode an endpoint's error responses,
including services required by middleware error encoders.

**Signature**

```ts
type ErrorServicesEncode<Endpoint> = Endpoint extends ConstraintRequest ?
    | Endpoint["~Error"]["EncodingServices"]
    | HttpApiMiddleware.ErrorServicesEncode<Endpoint["~Middleware"]>
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L446)

Since v4.0.0