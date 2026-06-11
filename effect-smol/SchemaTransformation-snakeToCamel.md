Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.snakeToCamel

Transforms strings by converting snake_case to camelCase
on decode and camelCase to snake_case on encode.

**When to use**

Use when you need a schema transformation to convert API field names between
snake_case and camelCase conventions.

**Details**

Decoding converts values such as `"my_field_name"` to `"myFieldName"`.
Encoding converts values such as `"myFieldName"` back to `"my_field_name"`.
The transformation is round-trippable for standard snake_case and camelCase.

**Example** (Snake to camel conversion)

```ts
import { Schema, SchemaTransformation } from "effect"

const SnakeToCamel = Schema.String.pipe(
  Schema.decode(SchemaTransformation.snakeToCamel())
)
```

**See**

- `trim`
- `toLowerCase`

**Signature**

```ts
declare const snakeToCamel: () => Transformation<string, string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L466)

Since v4.0.0