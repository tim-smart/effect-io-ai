Package: `effect`<br />
Module: `Schema`<br />

## Schema.isBetweenDate

Validates that a Date is within a specified range. The range boundaries can
be inclusive or exclusive based on the provided options.

**JSON Schema**

This check does not have a direct JSON Schema equivalent, as JSON Schema
validates date strings, not Date objects.

**Arbitrary**

When generating test data with fast-check, this applies `min` and `max`
constraints to ensure generated Date objects fall within the specified range.

**Signature**

```ts
declare const isBetweenDate: (options: { readonly minimum: globalThis.Date; readonly maximum: globalThis.Date; readonly exclusiveMinimum?: boolean | undefined; readonly exclusiveMaximum?: boolean | undefined; }, annotations?: Annotations.Filter) => AST.Filter<globalThis.Date>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4613)

Since v4.0.0