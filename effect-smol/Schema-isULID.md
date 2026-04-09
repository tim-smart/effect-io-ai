Package: `effect`<br />
Module: `Schema`<br />

## Schema.isULID

Validates that a string is a valid ULID (Universally Unique Lexicographically
Sortable Identifier).

**JSON Schema**

This check corresponds to a `pattern` constraint in JSON Schema that matches
the ULID format.

**Arbitrary**

When generating test data with fast-check, this applies a `patterns`
constraint to ensure generated strings match the ULID pattern.

**Signature**

```ts
declare const isULID: (annotations?: Annotations.Filter) => AST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5047)

Since v4.0.0