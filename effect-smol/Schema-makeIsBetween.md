Package: `effect`<br />
Module: `Schema`<br />

## Schema.makeIsBetween

Creates an inclusive or exclusive range check for any ordered type from an
`Order.Order` instance.

**Signature**

```ts
declare const makeIsBetween: <T>(deriveOptions: { readonly order: Order.Order<T>; readonly annotate?: ((options: { readonly minimum: T; readonly maximum: T; readonly exclusiveMinimum?: boolean | undefined; readonly exclusiveMaximum?: boolean | undefined; }) => Annotations.Filter) | undefined; readonly formatter?: Formatter<T> | undefined; }) => (options: { readonly minimum: T; readonly maximum: T; readonly exclusiveMinimum?: boolean | undefined; readonly exclusiveMaximum?: boolean | undefined; }, annotations?: Annotations.Filter) => SchemaAST.Filter<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6995)

Since v4.0.0