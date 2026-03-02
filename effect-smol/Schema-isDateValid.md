Package: `effect`<br />
Module: `Schema`<br />

## Schema.isDateValid

Validates that a Date object represents a valid date (not an invalid date
like `new Date("invalid")`).

**JSON Schema**

This check does not have a direct JSON Schema equivalent, as JSON Schema
validates date strings, not Date objects.

**Arbitrary**

When generating test data with fast-check, this applies a `noInvalidDate`
constraint to ensure generated Date objects are valid.

**Signature**

```ts
declare const isDateValid: (annotations?: Annotations.Filter) => AST.Filter<globalThis.Date>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4466)

Since v4.0.0