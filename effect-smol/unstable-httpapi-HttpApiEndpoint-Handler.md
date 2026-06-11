Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Handler

The normal server handler for an endpoint, accepting the decoded request shape
and returning either the endpoint success value or a custom `HttpServerResponse`.

**Signature**

```ts
type Handler<Endpoint, E, R> = (
  request: Types.Simplify<Request<Endpoint>>
) => Effect<Endpoint["~Success"]["Type"] | HttpServerResponse, Endpoint["~Error"]["Type"] | E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L673)

Since v4.0.0