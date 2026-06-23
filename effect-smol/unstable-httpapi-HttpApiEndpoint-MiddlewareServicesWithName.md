Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.MiddlewareServicesWithName

Extracts the middleware service requirements for the endpoint with the specified
name in an endpoint union.

**Signature**

```ts
type MiddlewareServicesWithName<Endpoints, Name> = MiddlewareServices<
  WithName<Endpoints, Name>
>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L830)

Since v4.0.0