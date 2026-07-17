Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.HandlerRawWithIdentifier

Derives the raw handler type for the endpoint with the specified identifier in
an endpoint union.

**Signature**

```ts
type HandlerRawWithIdentifier<Endpoints, Identifier, E, R> = HandlerRaw<
  WithIdentifier<Endpoints, Identifier>,
  E,
  R
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L628)

Since v4.0.0