Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.toLowerCase

A string-to-string transformation that lowercases on decode.
Encode is passthrough.

When to use this:
- Normalizing strings to lowercase (e.g. email addresses).

Behavior:
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

See also:
- `toUpperCase`
- `trim`

**Signature**

```ts
declare const toLowerCase: () => Transformation<string, string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L556)

Since v4.0.0