Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.HandlerRawWithName

Derives the raw handler type for the endpoint with the specified name in an
endpoint union.

**Signature**

```ts
type HandlerRawWithName<Endpoints, Name, E, R> = HandlerRaw<
  WithName<Endpoints, Name>,
  E,
  R
>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L738)

Since v4.0.0