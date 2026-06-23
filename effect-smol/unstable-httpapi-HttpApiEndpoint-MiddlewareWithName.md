Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.MiddlewareWithName

Extracts the middleware identifiers for the endpoint with the specified name in
an endpoint union.

**Signature**

```ts
type MiddlewareWithName<Endpoints, Name> = Middleware<WithName<Endpoints, Name>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L821)

Since v4.0.0