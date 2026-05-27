Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.HandlerWithName

Derives the normal handler type for the endpoint with the specified name in an
endpoint union.

**Signature**

```ts
type HandlerWithName<Endpoints, Name, E, R> = Handler<
  WithName<Endpoints, Name>,
  E,
  R
>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L753)

Since v4.0.0