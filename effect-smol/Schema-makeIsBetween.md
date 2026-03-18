Package: `effect`<br />
Module: `Schema`<br />

## Schema.makeIsBetween

Generic factory for creating an inclusive/exclusive range check for any
ordered type by supplying an `Order.Order` instance.

**Signature**

```ts
declare const makeIsBetween: <T>(deriveOptions: { readonly order: Order.Order<T>; readonly annotate?: ((options: { readonly minimum: T; readonly maximum: T; readonly exclusiveMinimum?: boolean | undefined; readonly exclusiveMaximum?: boolean | undefined; }) => Annotations.Filter) | undefined; readonly formatter?: Formatter<T> | undefined; }) => (options: { readonly minimum: T; readonly maximum: T; readonly exclusiveMinimum?: boolean | undefined; readonly exclusiveMaximum?: boolean | undefined; }, annotations?: Annotations.Filter) => AST.Filter<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5532)

Since v4.0.0