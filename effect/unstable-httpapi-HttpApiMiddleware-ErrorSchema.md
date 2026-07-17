Package: `effect`<br />
Module: `HttpApiMiddleware`<br />

## HttpApiMiddleware.ErrorSchema

Extracts the schema or schema union used for errors declared by a middleware identifier.

**Signature**

```ts
type ErrorSchema<A> = A extends { readonly [TypeId]: { readonly error: infer E } } ? ErrorSchemaFromConstraint<E>
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiMiddleware.ts#L207)

Since v4.0.0