Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.fromJsonString

Decodes a JSON `string` into an `unknown` value and encodes an `unknown`
value back to a JSON string.

When to use this:
- Parsing JSON strings from HTTP bodies, message queues, or storage.
- Typically composed with a further schema to validate the parsed structure.

Behavior:
- Decode: calls `JSON.parse`. Fails if the string is not valid JSON.
- Encode: calls `JSON.stringify`.

**Example** (Parsing JSON)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.String.pipe(
  Schema.decodeTo(Schema.Unknown, SchemaTransformation.fromJsonString)
)
```

See also:
- `uint8ArrayFromBase64String`
- `fromFormData`

**Signature**

```ts
declare const fromJsonString: Transformation<unknown, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1308)

Since v4.0.0