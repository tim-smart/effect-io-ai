Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.optionFromNullOr

Decodes `T | null` into `Option<T>` and encodes `Option<T>` back to
`T | null`.

**When to use**

Use when you need a schema transformation to convert nullable API fields to
`Option`.

**Details**

Decoding maps `null` to `Option.none()` and non-null values to
`Option.some(value)`. Encoding maps `Option.none()` to `null` and
`Option.some(value)` to `value`. The transformation is pure and synchronous.

**Example** (Converting nullable values to an Option)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.NullOr(Schema.String).pipe(
  Schema.decodeTo(
    Schema.Option(Schema.String),
    SchemaTransformation.optionFromNullOr()
  )
)
```

**See**

- `optionFromNullishOr`

**Signature**

```ts
declare const optionFromNullOr: <T>() => Transformation<Option.Option<T>, T | null>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1119)

Since v4.0.0