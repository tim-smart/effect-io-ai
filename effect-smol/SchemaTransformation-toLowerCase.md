Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.toLowerCase

Transforms strings by lowercasing on decode.
Encode is passthrough.

**When to use**

Use when you need a schema transformation to normalize strings to lowercase
(e.g. email addresses).

**Details**

Decoding applies `String.prototype.toLowerCase()`. Encoding is passthrough.
This is not round-trippable if the original had uppercase characters.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L503)

Since v4.0.0