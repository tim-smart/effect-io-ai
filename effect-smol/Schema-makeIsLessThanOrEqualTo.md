Package: `effect`<br />
Module: `Schema`<br />

## Schema.makeIsLessThanOrEqualTo

Generic factory for creating a "<=" check for any ordered type by supplying
an `Order.Order` instance.

**Signature**

```ts
declare const makeIsLessThanOrEqualTo: <T>(options: { readonly order: Order.Order<T>; readonly annotate?: ((exclusiveMaximum: T) => Annotations.Filter) | undefined; readonly formatter?: Formatter<T> | undefined; }) => (maximum: T, annotations?: Annotations.Filter) => AST.Filter<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5503)

Since v4.0.0