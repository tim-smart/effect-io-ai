Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.bigintFromString

Decodes a `string` into a `bigint` and encodes a `bigint` back to a
`string`.

**When to use**

Use when you need a schema transformation to parse large integer strings
(e.g. database IDs, blockchain values).

**Details**

Decoding coerces the string to a bigint like `BigInt(s)`. Encoding coerces
the bigint to a string like `String(n)`. Decoding fails if the string is not
a valid bigint representation.

**Example** (BigInt from string)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.String.pipe(
  Schema.decodeTo(Schema.BigInt, SchemaTransformation.bigintFromString)
)
```

**See**

- `numberFromString`
- `transform`

**Signature**

```ts
declare const bigintFromString: Transformation<bigint, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L918)

Since v4.0.0