Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLessThanDate

Validates that a Date is less than the specified value (exclusive).

**Arbitrary**

When generating test data with fast-check, this applies a `max` constraint
with `maxExcluded: true` to ensure generated Date objects are less than the
specified value.

**Signature**

```ts
declare const isLessThanDate: (exclusiveMaximum: globalThis.Date, annotations?: Annotations.Filter) => AST.Filter<globalThis.Date>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4557)

Since v4.0.0