Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.toLowerCase

A string-to-string transformation that lowercases on decode.
Encode is passthrough.

**When to use**

Use to normalize strings to lowercase (e.g. email addresses).

**Details**

- Decode: applies `String.prototype.toLowerCase()`.
- Encode: passthrough.
- Not round-trippable if the original had uppercase characters.

**Example** (Lowercasing on decode)

```ts
import { Schema, SchemaTransformation } from "effect"

const Lowered = Schema.String.pipe(
  Schema.decode(SchemaTransformation.toLowerCase())
)
```

**See**

- `toUpperCase`
- `trim`

**Signature**

```ts
declare const toLowerCase: () => Transformation<string, string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L571)

Since v4.0.0