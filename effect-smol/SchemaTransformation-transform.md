Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.transform

Creates a `Transformation` from pure (sync, infallible) decode and encode
functions.

When to use this:
- The conversion cannot fail.
- No Effect services are needed.

Behavior:
- Each function receives the input and returns the output directly.
- Skips `None` inputs (missing keys) — functions are only called on present values.
- Does not allocate Effects internally; uses optimized sync path.

**Example** (Converting between cents and dollars)

```ts
import { Schema, SchemaTransformation } from "effect"

const CentsFromDollars = Schema.Number.pipe(
  Schema.decodeTo(
    Schema.Number,
    SchemaTransformation.transform({
      decode: (dollars) => dollars * 100,
      encode: (cents) => cents / 100
    })
  )
)
```

See also:
- `transformOrFail` — for fallible or effectful transformations
- `transformOptional` — for transformations that handle missing keys
- `passthrough` — when no conversion is needed

**Signature**

```ts
declare const transform: <T, E>(options: { readonly decode: (input: E) => T; readonly encode: (input: T) => E; }) => Transformation<T, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L395)

Since v4.0.0