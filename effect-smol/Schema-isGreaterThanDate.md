Package: `effect`<br />
Module: `Schema`<br />

## Schema.isGreaterThanDate

Validates that a Date is greater than the specified value (exclusive).

**Details**

Arbitrary:

When generating test data with fast-check, this applies a `min` constraint of
one millisecond after the specified value to ensure generated Date objects are
greater than it.

**Signature**

```ts
declare const isGreaterThanDate: (exclusiveMinimum: globalThis.Date, annotations?: Annotations.Filter) => SchemaAST.Filter<globalThis.Date>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7648)

Since v4.0.0