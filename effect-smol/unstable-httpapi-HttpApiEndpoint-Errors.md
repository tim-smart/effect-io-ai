Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Errors

Computes the full error value union for an endpoint, including the endpoint
error schema's type and errors introduced by middleware.

**Signature**

```ts
type Errors<Endpoint> = Endpoint extends ConstraintRequest ?
  Endpoint["~Error"]["Type"] | HttpApiMiddleware.Error<Endpoint["~Middleware"]>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L435)

Since v4.0.0