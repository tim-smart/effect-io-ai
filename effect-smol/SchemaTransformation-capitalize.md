Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.capitalize

A string-to-string transformation that capitalizes the first character on
decode. Encode is passthrough.

When to use this:
- Normalizing display names or titles.

Behavior:
- Decode: uppercases the first character, leaves the rest unchanged.
- Encode: passthrough.

**Example** (Capitalizing on decode)

```ts
import { Schema, SchemaTransformation } from "effect"

const Capitalized = Schema.String.pipe(
  Schema.decode(SchemaTransformation.capitalize())
)
```

See also:
- `uncapitalize`
- `toUpperCase`

**Signature**

```ts
declare const capitalize: () => Transformation<string, string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L623)

Since v4.0.0