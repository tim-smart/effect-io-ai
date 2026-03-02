Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.snakeToCamel

A string-to-string transformation that converts snake_case to camelCase
on decode and camelCase to snake_case on encode.

When to use this:
- Converting API field names between snake_case and camelCase conventions.

Behavior:
- Decode: `"my_field_name"` → `"myFieldName"`.
- Encode: `"myFieldName"` → `"my_field_name"`.
- Round-trippable for standard snake_case/camelCase.

**Example** (Snake to camel conversion)

```ts
import { Schema, SchemaTransformation } from "effect"

const SnakeToCamel = Schema.String.pipe(
  Schema.decode(SchemaTransformation.snakeToCamel())
)
```

See also:
- `trim`
- `toLowerCase`

**Signature**

```ts
declare const snakeToCamel: () => Transformation<string, string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L516)

Since v4.0.0