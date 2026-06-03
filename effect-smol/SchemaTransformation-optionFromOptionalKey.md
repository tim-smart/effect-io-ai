Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.optionFromOptionalKey

Decodes an optional struct key into `Option<T>` and encodes `Option<T>`
back to an optional key.

**When to use**

Use when you need a schema transformation to convert optional struct keys
(declared with `Schema.optionalKey`) to `Option` values.

**Details**

Decoding maps an absent key (`None`) to `Some(None)` and a present key
(`Some(v)`) to `Some(Some(v))`. Encoding maps `Some(None)` to `None` to omit
the key, and maps `Some(Some(v))` to `Some(v)`. This uses
`transformOptional` under the hood.

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

**See**

- `optionFromOptional`
- `optionFromUndefinedOr`
- `transformOptional`

**Signature**

```ts
declare const optionFromOptionalKey: <T>() => Transformation<Option.Option<T>, T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1325)

Since v4.0.0