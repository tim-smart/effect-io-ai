Package: `effect`<br />
Module: `JsonSchema`<br />

## JsonSchema.META_SCHEMA_URI_DRAFT_07

Represents the `$schema` meta-schema URI for JSON Schema Draft-07.

**When to use**

Use when constructing a Draft-07 JSON Schema document and you need a stable
value for the root `$schema` field.

**Details**

The exported value is the literal string
`http://json-schema.org/draft-07/schema`.

**See**

- `META_SCHEMA_URI_DRAFT_2020_12` for the Draft 2020-12 `$schema` URI

**Signature**

```ts
declare const META_SCHEMA_URI_DRAFT_07: "http://json-schema.org/draft-07/schema"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonSchema.ts#L179)

Since v4.0.0