Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.optionFromOptional

Decodes optional values into `Option<T>` and encodes `Option.none()` back to
an omitted optional value.

**When to use**

Use when you need a schema transformation to convert optional (possibly
`undefined`) values to `Option`.

**Details**

Decoding maps an absent or `undefined` value to `Some(None)` and a present
value to `Some(Some(v))`. Encoding maps `Some(None)` to `None` to omit the
value, and maps `Some(Some(v))` to `Some(v)`. This uses
`transformOptional` under the hood and filters out `undefined` on decode.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1297)

Since v4.0.0