Package: `effect`<br />
Module: `Schema`<br />

## Schema.isUUID

Validates that a string is a strict Universally Unique Identifier (UUID).

**When to use**

Use when you need UUID semantics, including version and RFC variant bits,
rather than only the dashed hexadecimal shape.

**Details**

Without a version argument, this accepts UUID versions 1 through 8, the nil
UUID (`00000000-0000-0000-0000-000000000000`), and the max UUID
(`ffffffff-ffff-ffff-ffff-ffffffffffff`). With a version argument, this
accepts only UUIDs with that version and RFC variant bits; nil and max UUIDs
are not versioned UUIDs and do not match version-specific checks.

JSON Schema:

This check corresponds to a `pattern` constraint in JSON Schema that matches
UUID format, and includes a `format: "uuid"` annotation.

Arbitrary:

When generating test data with fast-check, this applies a `patterns`
constraint to ensure generated strings match the UUID pattern.

**See**

- `isGUID` for shape-only GUID validation.

**Signature**

```ts
declare const isUUID: (version?: 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8, annotations?: Annotations.Filter) => SchemaAST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6615)

Since v4.0.0