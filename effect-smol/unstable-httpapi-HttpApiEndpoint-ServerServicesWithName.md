Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ServerServicesWithName

Computes the server-side service requirements for the endpoint with the
specified name in an endpoint union.

**Signature**

```ts
type ServerServicesWithName<Endpoints, Name> = ServerServices<
  WithName<Endpoints, Name>
>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L757)

Since v4.0.0