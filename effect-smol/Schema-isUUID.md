Package: `effect`<br />
Module: `Schema`<br />

## Schema.isUUID

Validates that a string is a valid Universally Unique Identifier (UUID).
Optionally specify a version (1-8) to validate against a specific UUID version.
If no version is specified (`undefined`), all versions are supported.

**JSON Schema**

This check corresponds to a `pattern` constraint in JSON Schema that matches
UUID format, and includes a `format: "uuid"` annotation.

**Arbitrary**

When generating test data with fast-check, this applies a `patterns`
constraint to ensure generated strings match the UUID pattern.

**Signature**

```ts
declare const isUUID: (version?: 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8, annotations?: Annotations.Filter) => AST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5135)

Since v4.0.0