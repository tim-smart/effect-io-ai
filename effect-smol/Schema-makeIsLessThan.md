Package: `effect`<br />
Module: `Schema`<br />

## Schema.makeIsLessThan

Generic factory for creating a "<" check for any ordered type by supplying
an `Order.Order` instance.

**Signature**

```ts
declare const makeIsLessThan: <T>(options: { readonly order: Order.Order<T>; readonly annotate?: ((exclusiveMaximum: T) => Annotations.Filter) | undefined; readonly formatter?: Formatter<T> | undefined; }) => (exclusiveMaximum: T, annotations?: Annotations.Filter) => AST.Filter<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5504)

Since v4.0.0