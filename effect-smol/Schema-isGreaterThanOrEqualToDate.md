Package: `effect`<br />
Module: `Schema`<br />

## Schema.isGreaterThanOrEqualToDate

Validates that a Date is greater than or equal to the specified date
(inclusive).

**JSON Schema**

This check does not have a direct JSON Schema equivalent, as JSON Schema
validates date strings, not Date objects.

**Arbitrary**

When generating test data with fast-check, this applies a `min` constraint
to ensure generated Date objects are greater than or equal to the specified
date.

**Signature**

```ts
declare const isGreaterThanOrEqualToDate: (minimum: globalThis.Date, annotations?: Annotations.Filter) => AST.Filter<globalThis.Date>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5982)

Since v4.0.0