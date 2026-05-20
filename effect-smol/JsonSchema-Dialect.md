Package: `effect`<br />
Module: `JsonSchema`<br />

## JsonSchema.Dialect

The set of JSON Schema dialects supported by this module.

**Details**

Supported values are `"draft-07"` for JSON Schema Draft-07,
`"draft-2020-12"` for JSON Schema Draft 2020-12 and the canonical internal
form, `"openapi-3.1"` for OpenAPI 3.1, and `"openapi-3.0"` for OpenAPI 3.0.

**Signature**

```ts
type Dialect = "draft-07" | "draft-2020-12" | "openapi-3.1" | "openapi-3.0"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonSchema.ts#L119)

Since v4.0.0