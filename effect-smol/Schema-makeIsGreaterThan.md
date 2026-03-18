Package: `effect`<br />
Module: `Schema`<br />

## Schema.makeIsGreaterThan

Generic factory for creating a "greater than" (`>`) check for any ordered
type by supplying an `Order.Order` instance.

**Signature**

```ts
declare const makeIsGreaterThan: <T>(options: { readonly order: Order.Order<T>; readonly annotate?: ((exclusiveMinimum: T) => Annotations.Filter) | undefined; readonly formatter?: Formatter<T> | undefined; }) => (exclusiveMinimum: T, annotations?: Annotations.Filter) => AST.Filter<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5428)

Since v4.0.0