Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ErrorServicesDecode

Computes the services required to decode an endpoint's error responses,
including services required by middleware error decoders.

**Signature**

```ts
type ErrorServicesDecode<Endpoint> = Endpoint extends ConstraintRequest ?
    | Endpoint["~Error"]["DecodingServices"]
    | HttpApiMiddleware.ErrorServicesDecode<Endpoint["~Middleware"]>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L559)

Since v4.0.0