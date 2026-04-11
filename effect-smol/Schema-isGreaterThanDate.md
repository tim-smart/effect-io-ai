Package: `effect`<br />
Module: `Schema`<br />

## Schema.isGreaterThanDate

Validates that a Date is greater than the specified value (exclusive).

**Arbitrary**

When generating test data with fast-check, this applies a `min` constraint
with `minExcluded: true` to ensure generated Date objects are greater than the
specified value.

**Signature**

```ts
declare const isGreaterThanDate: (exclusiveMinimum: globalThis.Date, annotations?: Annotations.Filter) => AST.Filter<globalThis.Date>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6046)

Since v4.0.0