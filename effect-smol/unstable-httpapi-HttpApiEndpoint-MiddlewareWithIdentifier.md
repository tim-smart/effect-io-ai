Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.MiddlewareWithIdentifier

Extracts the middleware identifiers for the endpoint with the specified
identifier in an endpoint union.

**Signature**

```ts
type MiddlewareWithIdentifier<Endpoints, Identifier> = Middleware<
  WithIdentifier<Endpoints, Identifier>
>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L674)

Since v4.0.0