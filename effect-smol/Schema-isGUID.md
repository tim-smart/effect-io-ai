Package: `effect`<br />
Module: `Schema`<br />

## Schema.isGUID

Validates that a string has the GUID / UUID textual shape.

**When to use**

Use when you need to accept dashed hexadecimal identifiers without enforcing
UUID version or variant bits.

**Details**

This check accepts strings in the `8-4-4-4-12` hexadecimal form. JSON Schema
output includes the corresponding `pattern` constraint and intentionally does
not include `format: "uuid"` because GUID validation is looser than UUID
validation.

Arbitrary:

When generating test data with fast-check, this applies a `patterns`
constraint to ensure generated strings match the GUID pattern.

**See**

- `isUUID` for strict UUID validation.

**Signature**

```ts
declare const isGUID: (annotations?: Annotations.Filter) => SchemaAST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6323)

Since v4.0.0