Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.toUpperCase

A string-to-string transformation that uppercases on decode.
Encode is passthrough.

When to use this:
- Normalizing strings to uppercase (e.g. country codes).

Behavior:
- Decode: applies `String.prototype.toUpperCase()`.
- Encode: passthrough.
- Not round-trippable if the original had lowercase characters.

**Example** (Uppercasing on decode)

```ts
import { Schema, SchemaTransformation } from "effect"

const Uppered = Schema.String.pipe(
  Schema.decode(SchemaTransformation.toUpperCase())
)
```

See also:
- `toLowerCase`
- `trim`

**Signature**

```ts
declare const toUpperCase: () => Transformation<string, string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L588)

Since v4.0.0