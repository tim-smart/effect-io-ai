Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.uncapitalize

A string-to-string transformation that lowercases the first character on
decode. Encode is passthrough.

When to use this:
- Normalizing identifiers or field names.

Behavior:
- Decode: lowercases the first character, leaves the rest unchanged.
- Encode: passthrough.

**Example** (Uncapitalizing on decode)

```ts
import { Schema, SchemaTransformation } from "effect"

const Uncapitalized = Schema.String.pipe(
  Schema.decode(SchemaTransformation.uncapitalize())
)
```

See also:
- `capitalize`
- `toLowerCase`

**Signature**

```ts
declare const uncapitalize: () => Transformation<string, string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L658)

Since v4.0.0