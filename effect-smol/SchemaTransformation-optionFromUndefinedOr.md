Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.optionFromUndefinedOr

Decodes `T | undefined` into `Option<T>` and encodes `Option.none()` back to
`undefined`.

**When to use**

Use to convert undefined-or API fields to `Option`.

**Details**

- Decode: `undefined` → `Option.none()`, non-undefined → `Option.some(value)`.
- Encode: `Option.none()` → `undefined`, `Option.some(value)` → `value`.
- Pure and synchronous.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1166)

Since v4.0.0