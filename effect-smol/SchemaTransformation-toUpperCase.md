Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.toUpperCase

Transforms strings by uppercasing on decode.
Encode is passthrough.

**When to use**

Use when you need a schema transformation to normalize strings to uppercase
(e.g. country codes).

**Details**

Decoding applies `String.prototype.toUpperCase()`. Encoding is passthrough.
This is not round-trippable if the original had lowercase characters.

**Example** (Uppercasing on decode)

```ts
import { Schema, SchemaTransformation } from "effect"

const Uppered = Schema.String.pipe(
  Schema.decode(SchemaTransformation.toUpperCase())
)
```

**See**

- `toLowerCase`
- `trim`

**Signature**

```ts
declare const toUpperCase: () => Transformation<string, string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L613)

Since v4.0.0