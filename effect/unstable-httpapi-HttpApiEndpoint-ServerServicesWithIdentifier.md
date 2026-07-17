Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ServerServicesWithIdentifier

Computes the server-side service requirements for the endpoint with the
specified identifier in an endpoint union.

**Signature**

```ts
type ServerServicesWithIdentifier<Endpoints, Identifier> = ServerServices<
  WithIdentifier<Endpoints, Identifier>
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L663)

Since v4.0.0