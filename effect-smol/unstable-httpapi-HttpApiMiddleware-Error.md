Package: `effect`<br />
Module: `HttpApiMiddleware`<br />

## HttpApiMiddleware.Error

Extracts the decoded error type declared by a middleware identifier.

**Signature**

```ts
type Error<A> = ErrorSchema<A>["Type"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiMiddleware.ts#L254)

Since v4.0.0