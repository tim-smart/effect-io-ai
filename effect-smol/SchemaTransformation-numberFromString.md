Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.numberFromString

Decodes a `string` into a `number` and encodes a `number` back to a
`string`.

When to use this:
- Parsing numeric strings from APIs, form data, or URL parameters.

Behavior:
- Decode: coerces the string to a number (like `Number(s)`).
- Encode: coerces the number to a string (like `String(n)`).
- Does not validate that the result is finite — combine with
  `Schema.Finite` or `Schema.Int` for stricter checks.

**Example** (Number from string)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.String.pipe(
  Schema.decodeTo(Schema.Number, SchemaTransformation.numberFromString)
)
```

See also:
- `bigintFromString`
- `transform`

**Signature**

```ts
declare const numberFromString: Transformation<number, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L846)

Since v4.0.0