Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.trim

Transforms strings by trimming whitespace on decode.
Encode is passthrough (no change).

**When to use**

Use to normalize user input by stripping leading/trailing whitespace.

**Details**

- Decode: applies `String.prototype.trim()`.
- Encode: passthrough (returns the string unchanged).
- Not round-trippable if the original had whitespace.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L495)

Since v4.0.0