Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.optionFromUndefinedOr

Decodes `T | undefined` into `Option<T>` and encodes `Option<T>` back
to `T | undefined`.

When to use this:
- Converting undefined-or API fields to `Option`.

Behavior:
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

See also:
- `optionFromOptionalKey`
- `optionFromOptional`

**Signature**

```ts
declare const optionFromUndefinedOr: <T>() => Transformation<Option.Option<T>, T | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1050)

Since v4.0.0