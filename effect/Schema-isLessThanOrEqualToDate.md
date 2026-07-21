Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLessThanOrEqualToDate

Validates that a Date is less than or equal to the specified date
(inclusive).

**Details**

JSON Schema:

This check does not have a direct JSON Schema equivalent, as JSON Schema
validates date strings, not Date objects.

Arbitrary:

When generating test data with fast-check, this applies a `max` constraint
to ensure generated Date objects are less than or equal to the specified
date.

**Signature**

```ts
declare const isLessThanOrEqualToDate: (maximum: globalThis.Date, annotations?: Annotations.Filter) => SchemaAST.Filter<globalThis.Date>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7750)

Since v4.0.0