Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.WithIdentifier

Selects the endpoint with the specified identifier from a union of endpoints.

**Signature**

```ts
type WithIdentifier<Endpoints, Identifier> = Extract<
  Endpoints,
  { readonly identifier: Identifier }
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L592)

Since v4.0.0