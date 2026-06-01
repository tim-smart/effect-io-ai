Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.trim

Transforms strings by trimming whitespace on decode.
Encode is passthrough (no change).

**When to use**

Use when you need a schema transformation to normalize user input by
stripping leading/trailing whitespace.

**Details**

Decoding applies `String.prototype.trim()`. Encoding is passthrough and
returns the string unchanged. This is not round-trippable if the original had
whitespace.

**Example** (Trimming on decode)

```ts
import { Schema, SchemaTransformation } from "effect"

const Trimmed = Schema.String.pipe(
  Schema.decode(SchemaTransformation.trim())
)
```

**See**

- `toLowerCase`
- `toUpperCase`
- `snakeToCamel`

**Signature**

```ts
declare const trim: () => Transformation<string, string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L500)

Since v4.0.0