Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.stringFromBase64String

Decodes a Base64-encoded `string` into a UTF-8 `string` and encodes a
UTF-8 `string` back to a Base64 string.

**When to use**

Use when you need a schema transformation for text data transmitted as Base64
strings.

**Details**

Decoding parses the Base64 string into a UTF-8 string. Encoding writes the
string as a Base64 string.

**Example** (String from Base64)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.String.pipe(
  Schema.decodeTo(Schema.String, SchemaTransformation.stringFromBase64String)
)
```

**See**

- `uint8ArrayFromBase64String`
- `Schema.StringFromBase64` - a ready-made schema wrapping this transformation.

**Signature**

```ts
declare const stringFromBase64String: Transformation<string, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1439)

Since v4.0.0