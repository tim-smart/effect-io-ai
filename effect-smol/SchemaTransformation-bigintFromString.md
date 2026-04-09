Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.bigintFromString

Decodes a `string` into a `bigint` and encodes a `bigint` back to a
`string`.

When to use this:
- Parsing large integer strings (e.g. database IDs, blockchain values).

Behavior:
- Decode: coerces the string to a bigint (like `BigInt(s)`).
- Encode: coerces the bigint to a string (like `String(n)`).
- Fails on decode if the string is not a valid bigint representation.

**Example** (BigInt from string)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.String.pipe(
  Schema.decodeTo(Schema.BigInt, SchemaTransformation.bigintFromString)
)
```

See also:
- `numberFromString`
- `transform`

**Signature**

```ts
declare const bigintFromString: Transformation<bigint, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L880)

Since v4.0.0