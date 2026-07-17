Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.HandlerWithIdentifier

Derives the normal handler type for the endpoint with the specified identifier
in an endpoint union.

**Signature**

```ts
type HandlerWithIdentifier<Endpoints, Identifier, E, R> = Handler<
  WithIdentifier<Endpoints, Identifier>,
  E,
  R
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L615)

Since v4.0.0