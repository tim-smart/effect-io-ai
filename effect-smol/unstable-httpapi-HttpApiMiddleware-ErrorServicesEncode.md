Package: `effect`<br />
Module: `HttpApiMiddleware`<br />

## HttpApiMiddleware.ErrorServicesEncode

Extracts the schema services required to encode errors declared by a middleware identifier.

**Signature**

```ts
type ErrorServicesEncode<A> = ErrorSchema<A>["EncodingServices"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiMiddleware.ts#L259)

Since v4.0.0