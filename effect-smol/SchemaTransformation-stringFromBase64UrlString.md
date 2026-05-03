Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.stringFromBase64UrlString

Decodes a base64 (URL) encoded `string` into a UTF-8 `string` and encodes it back.

When to use this:
- Handling text data transmitted as Base64 URL-safe strings.

Behavior:
- Decode: parses the Base64 URL string into a UTF-8 string.
- Encode: encodes the string as a Base64 URL string.

**Example** (String from Base64Url)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.String.pipe(
  Schema.decodeTo(Schema.String, SchemaTransformation.stringFromBase64UrlString)
)
```

See also:
- `stringFromBase64String`
- `Schema.StringFromBase64Url` - a ready-made schema wrapping this transformation.

**Signature**

```ts
declare const stringFromBase64UrlString: Transformation<string, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1417)

Since v4.0.0