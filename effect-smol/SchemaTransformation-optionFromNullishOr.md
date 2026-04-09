Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.optionFromNullishOr

Decodes `T | null | undefined` into `Option<T>` and encodes `Option<T>`
back to `T | null` or `T | undefined` depending on the provided `options.onNoneEncoding` (defaults to `undefined`).

When to use this:
- Converting nullish API fields to `Option` when both `null` and
  `undefined` represent absence.

Behavior:
- Decode: `null` or `undefined` → `Option.none()`, otherwise → `Option.some(value)`.
- Encode: `Option.none()` → `null` or `undefined` (per `options.onNoneEncoding`),
  `Option.some(value)` → `value`.
- Pure and synchronous.

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

See also:
- `optionFromNullOr`
- `optionFromUndefinedOr`

**Signature**

```ts
declare const optionFromNullishOr: <T>(options?: { onNoneEncoding: null | undefined; }) => Transformation<Option.Option<T>, T | null | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1127)

Since v4.0.0