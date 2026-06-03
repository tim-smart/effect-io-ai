Package: `effect`<br />
Module: `Schema`<br />

## Schema.makeIsGreaterThanOrEqualTo

Creates a greater-than-or-equal-to (`>=`) check for any ordered type from an
`Order.Order` instance.

**Signature**

```ts
declare const makeIsGreaterThanOrEqualTo: <T>(options: { readonly order: Order.Order<T>; readonly annotate?: ((exclusiveMinimum: T) => Annotations.Filter) | undefined; readonly formatter?: Formatter<T> | undefined; }) => (minimum: T, annotations?: Annotations.Filter) => SchemaAST.Filter<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6741)

Since v4.0.0