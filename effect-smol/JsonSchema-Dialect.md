Package: `effect`<br />
Module: `JsonSchema`<br />

## JsonSchema.Dialect

The set of JSON Schema dialects supported by this module.

**When to use**

Use as the dialect marker for `JsonSchema` documents when parsing,
converting, or emitting schemas across the supported formats.

**Details**

Supported values are `"draft-07"` for JSON Schema Draft-07,
`"draft-2020-12"` for JSON Schema Draft 2020-12 and the canonical internal
form, `"openapi-3.1"` for OpenAPI 3.1, and `"openapi-3.0"` for OpenAPI 3.0.

**See**

- `Document` for a single root schema tagged with a dialect
- `MultiDocument` for multiple root schemas tagged with a dialect

**Signature**

```ts
type Dialect = "draft-07" | "draft-2020-12" | "openapi-3.1" | "openapi-3.0"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonSchema.ts#L55)

Since v4.0.0