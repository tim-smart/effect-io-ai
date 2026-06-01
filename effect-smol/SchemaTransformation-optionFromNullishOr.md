Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.optionFromNullishOr

Decodes `T | null | undefined` into `Option<T>` and encodes `Option<T>`
back to `T | null` or `T | undefined` depending on the provided
`options.onNoneEncoding` (defaults to `undefined`).

**When to use**

Use when you need a schema transformation to convert nullish API fields to
`Option` when both `null` and `undefined` represent absence.

**Details**

Decoding maps `null` and `undefined` to `Option.none()` and all other values
to `Option.some(value)`. Encoding maps `Option.none()` to `null` or
`undefined` according to `options.onNoneEncoding`, and maps
`Option.some(value)` to `value`. The transformation is pure and synchronous.

**Example** (Option from nullish, encoding None as null)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.NullishOr(Schema.String).pipe(
  Schema.decodeTo(
    Schema.Option(Schema.String),
    SchemaTransformation.optionFromNullishOr({ onNoneEncoding: null })
  )
)
```

**See**

- `optionFromNullOr`
- `optionFromUndefinedOr`

**Signature**

```ts
declare const optionFromNullishOr: <T>(options?: { onNoneEncoding: null | undefined; }) => Transformation<Option.Option<T>, T | null | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1226)

Since v4.0.0