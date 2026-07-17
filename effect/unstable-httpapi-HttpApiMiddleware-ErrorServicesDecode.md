Package: `effect`<br />
Module: `HttpApiMiddleware`<br />

## HttpApiMiddleware.ErrorServicesDecode

Extracts the schema services required to decode errors declared by a middleware identifier.

**Signature**

```ts
type ErrorServicesDecode<A> = ErrorSchema<A>["DecodingServices"]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiMiddleware.ts#L259)

Since v4.0.0