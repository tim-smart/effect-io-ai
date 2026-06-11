Package: `effect`<br />
Module: `JsonSchema`<br />

## JsonSchema.META_SCHEMA_URI_DRAFT_2020_12

Represents the `$schema` meta-schema URI for JSON Schema Draft 2020-12.

**When to use**

Use when you need to populate the `$schema` field while emitting a JSON
Schema document that should declare JSON Schema Draft 2020-12.

**Details**

The exported value is the literal string
`https://json-schema.org/draft/2020-12/schema`.

**See**

- `META_SCHEMA_URI_DRAFT_07` for the Draft-07 `$schema` URI

**Signature**

```ts
declare const META_SCHEMA_URI_DRAFT_2020_12: "https://json-schema.org/draft/2020-12/schema"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonSchema.ts#L199)

Since v4.0.0