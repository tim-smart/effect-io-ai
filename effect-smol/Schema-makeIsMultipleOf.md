Package: `effect`<br />
Module: `Schema`<br />

## Schema.makeIsMultipleOf

Generic factory for creating a divisibility check for any numeric type by
supplying a remainder function and a zero value.

**Signature**

```ts
declare const makeIsMultipleOf: <T>(options: { readonly remainder: (input: T, divisor: T) => T; readonly zero: NoInfer<T>; readonly annotate?: ((divisor: T) => Annotations.Filter) | undefined; readonly formatter?: Formatter<T> | undefined; }) => (divisor: T, annotations?: Annotations.Filter) => AST.Filter<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5601)

Since v4.0.0