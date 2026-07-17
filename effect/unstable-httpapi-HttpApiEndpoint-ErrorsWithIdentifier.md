Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ErrorsWithIdentifier

Computes the full error value union for the endpoint with the specified
identifier in an endpoint union.

**Signature**

```ts
type ErrorsWithIdentifier<Endpoints, Identifier> = Errors<
  WithIdentifier<Endpoints, Identifier>
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L652)

Since v4.0.0