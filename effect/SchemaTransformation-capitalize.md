Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.capitalize

Transforms strings by capitalizing the first character on
decode. Encode is passthrough.

**When to use**

Use when you need a schema transformation to normalize display names or
titles.

**Details**

Decoding uppercases the first character and leaves the rest unchanged.
Encoding is passthrough.

**Example** (Capitalizing on decode)

```ts
import { Schema, SchemaTransformation } from "effect"

const Capitalized = Schema.String.pipe(
  Schema.decode(SchemaTransformation.capitalize())
)
```

**See**

- `uncapitalize`
- `toUpperCase`

**Signature**

```ts
declare const capitalize: () => Transformation<string, string>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaTransformation.ts#L577)

Since v4.0.0