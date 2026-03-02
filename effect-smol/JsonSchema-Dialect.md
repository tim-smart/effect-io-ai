Package: `effect`<br />
Module: `JsonSchema`<br />

## JsonSchema.Dialect

The set of JSON Schema dialects supported by this module.

- `"draft-07"` — JSON Schema Draft-07
- `"draft-2020-12"` — JSON Schema Draft 2020-12 (canonical internal form)
- `"openapi-3.1"` — OpenAPI 3.1 (uses Draft 2020-12 as its schema dialect)
- `"openapi-3.0"` — OpenAPI 3.0 (uses a Draft-04/07 subset with extensions)

**Signature**

```ts
type Dialect = "draft-07" | "draft-2020-12" | "openapi-3.1" | "openapi-3.0"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonSchema.ts#L115)

Since v4.0.0