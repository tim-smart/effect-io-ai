Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ErrorsWithName

Computes the full error value union for the endpoint with the specified name in
an endpoint union.

**Signature**

```ts
type ErrorsWithName<Endpoints, Name> = Errors<WithName<Endpoints, Name>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L801)

Since v4.0.0