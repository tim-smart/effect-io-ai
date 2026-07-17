Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Handler

The normal server handler for an endpoint, accepting the decoded request shape
and returning either the endpoint success value or a custom `HttpServerResponse`.

**Signature**

```ts
type Handler<Endpoint, E, R> = (
  request: Simplify<Endpoint["~Request"]>
) => Effect<SuccessType<Endpoint["~Success"]> | HttpServerResponse, Endpoint["~Error"]["Type"] | E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L571)

Since v4.0.0