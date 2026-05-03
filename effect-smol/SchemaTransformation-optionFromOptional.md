Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.optionFromOptional

Decodes `T | undefined` into `Option<T>` and encodes `Option<T>` back
to `T | undefined`.

When to use this:
- Converting optional (possibly `undefined`) values to `Option`.

Behavior:
- Decode: absent or `undefined` → `Some(None)`, present → `Some(Some(v))`.
- Encode: `Some(None)` → `None` (omit), `Some(Some(v))` → `Some(v)`.
- Uses `transformOptional` under the hood; filters out `undefined` on decode.

**Example** (Optional value to Option)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.Struct({
  age: Schema.optional(Schema.Number).pipe(
    Schema.decodeTo(
      Schema.Option(Schema.Number),
      SchemaTransformation.optionFromOptional()
    )
  )
})
```

See also:
- `optionFromOptionalKey`
- `optionFromUndefinedOr`
- `transformOptional`

**Signature**

```ts
declare const optionFromOptional: <T>() => Transformation<Option.Option<T>, T | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1255)

Since v4.0.0