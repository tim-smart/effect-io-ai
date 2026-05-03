Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.stringFromHexString

Decodes a hex encoded `string` into a UTF-8 `string` and encodes it back.

When to use this:
- Handling text data transmitted as hexadecimal strings.

Behavior:
- Decode: parses the hex string into a UTF-8 string.
- Encode: encodes the string as a hex string.

**Example** (String from Hex)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.String.pipe(
  Schema.decodeTo(Schema.String, SchemaTransformation.stringFromHexString)
)
```

See also:
- `stringFromBase64String`
- `Schema.StringFromHex` - a ready-made schema wrapping this transformation.

**Signature**

```ts
declare const stringFromHexString: Transformation<string, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1448)

Since v4.0.0