Package: `effect`<br />
Module: `Schema`<br />

## Schema.makeIsGreaterThanOrEqualTo

Generic factory for creating a ">=" check for any ordered type by supplying
an `Order.Order` instance.

**Signature**

```ts
declare const makeIsGreaterThanOrEqualTo: <T>(options: { readonly order: Order.Order<T>; readonly annotate?: ((exclusiveMinimum: T) => Annotations.Filter) | undefined; readonly formatter?: Formatter<T> | undefined; }) => (minimum: T, annotations?: Annotations.Filter) => AST.Filter<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5650)

Since v4.0.0