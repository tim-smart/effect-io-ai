Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLessThanDate

Validates that a Date is less than the specified value (exclusive).

**Details**

Arbitrary:

When generating test data with fast-check, this applies a `max` constraint of
one millisecond before the specified value to ensure generated Date objects
are less than it.

**Signature**

```ts
declare const isLessThanDate: (exclusiveMaximum: globalThis.Date, annotations?: Annotations.Filter) => SchemaAST.Filter<globalThis.Date>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7641)

Since v4.0.0