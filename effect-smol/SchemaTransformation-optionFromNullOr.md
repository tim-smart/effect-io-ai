Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.optionFromNullOr

Decodes `T | null` into `Option<T>` and encodes `Option<T>` back to
`T | null`.

When to use this:
- Converting nullable API fields to `Option`.

Behavior:
- Decode: `null` → `Option.none()`, non-null → `Option.some(value)`.
- Encode: `Option.none()` → `null`, `Option.some(value)` → `value`.
- Pure and synchronous.

**Example** (Option from nullable)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.NullOr(Schema.String).pipe(
  Schema.decodeTo(
    Schema.Option(Schema.String),
    SchemaTransformation.optionFromNullOr()
  )
)
```

See also:
- `optionFromNullishOr`

**Signature**

```ts
declare const optionFromNullOr: <T>() => Transformation<Option.Option<T>, T | null>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1012)

Since v4.0.0