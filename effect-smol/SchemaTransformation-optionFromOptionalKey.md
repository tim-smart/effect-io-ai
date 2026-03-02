Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.optionFromOptionalKey

Decodes an optional struct key into `Option<T>` and encodes `Option<T>`
back to an optional key.

When to use this:
- Converting optional struct keys (declared with `Schema.optionalKey`) to
  `Option` values.

Behavior:
- Decode: absent key (`None`) → `Some(None)`, present key (`Some(v)`) → `Some(Some(v))`.
- Encode: `Some(None)` → `None` (omit key), `Some(Some(v))` → `Some(v)`.
- Uses `transformOptional` under the hood.

**Example** (Optional key to Option)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.Struct({
  name: Schema.optionalKey(Schema.String).pipe(
    Schema.decodeTo(
      Schema.Option(Schema.String),
      SchemaTransformation.optionFromOptionalKey()
    )
  )
})
```

See also:
- `optionFromOptional`
- `optionFromUndefinedOr`
- `transformOptional`

**Signature**

```ts
declare const optionFromOptionalKey: <T>() => Transformation<Option.Option<T>, T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1137)

Since v4.0.0