Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Handler

The normal server handler for an endpoint, accepting the decoded request shape
and returning either the endpoint success value or a custom `HttpServerResponse`.

**Signature**

```ts
type Handler<Endpoint, E, R> = (
  request: Types.Simplify<Request<Endpoint>>
) => Effect<SuccessType<Endpoint["~Success"]> | HttpServerResponse, Endpoint["~Error"]["Type"] | E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L716)

Since v4.0.0