Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.MiddlewareServicesWithIdentifier

Extracts the middleware service requirements for the endpoint with the
specified identifier in an endpoint union.

**Signature**

```ts
type MiddlewareServicesWithIdentifier<Endpoints, Identifier> = MiddlewareServices<WithIdentifier<Endpoints, Identifier>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L685)

Since v4.0.0