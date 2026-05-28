Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.optionFromOptional

Decodes optional values into `Option<T>` and encodes `Option.none()` back to
an omitted optional value.

**When to use**

Use to convert optional (possibly `undefined`) values to `Option`.

**Details**

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

**See**

- `optionFromOptionalKey`
- `optionFromUndefinedOr`
- `transformOptional`

**Signature**

```ts
declare const optionFromOptional: <T>() => Transformation<Option.Option<T>, T | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1300)

Since v4.0.0