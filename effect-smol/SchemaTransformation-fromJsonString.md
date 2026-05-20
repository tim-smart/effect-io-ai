Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.fromJsonString

Decodes a JSON string with `JSON.parse` and encodes a value with
`JSON.stringify`.

**When to use**

Use this for JSON stored or transmitted as a string, usually before composing
with another schema that validates the parsed structure.

**Details**

Decode fails with `InvalidValue` for invalid JSON, and encode can fail with
`InvalidValue` when `JSON.stringify` cannot serialize the value.

**Example** (Parsing JSON)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.String.pipe(
  Schema.decodeTo(Schema.Unknown, SchemaTransformation.fromJsonString)
)
```

**See**

- `uint8ArrayFromBase64String`
- `fromFormData`

**Signature**

```ts
declare const fromJsonString: Transformation<unknown, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1579)

Since v4.0.0