Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.optionFromUndefinedOr

Decodes `T | undefined` into `Option<T>` and encodes `Option.none()` back to
`undefined`.

**When to use**

Use when you need a schema transformation to convert API fields that use
`undefined` for absence to `Option`.

**Details**

Decoding maps `undefined` to `Option.none()` and non-undefined values to
`Option.some(value)`. Encoding maps `Option.none()` to `undefined` and
`Option.some(value)` to `value`. The transformation is pure and synchronous.

**Example** (Option from undefined-or)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.UndefinedOr(Schema.String).pipe(
  Schema.decodeTo(
    Schema.Option(Schema.String),
    SchemaTransformation.optionFromUndefinedOr()
  )
)
```

**See**

- `optionFromOptionalKey`
- `optionFromOptional`

**Signature**

```ts
declare const optionFromUndefinedOr: <T>() => Transformation<Option.Option<T>, T | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1160)

Since v4.0.0