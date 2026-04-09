Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.stringFromUriComponent

Decodes a URI component encoded string into a UTF-8 string and encodes a
UTF-8 string into a URI component encoded string.

When to use this:
- Storing structured data in URL query parameters or fragments.
- Composing with `Schema.parseJson` to round-trip JSON through a URL.

Behavior:
- Decode: calls `decodeURIComponent`. Fails if the input contains malformed
  percent-encoding sequences.
- Encode: calls `encodeURIComponent`.

**Example** (URI component schema)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.String.pipe(
  Schema.decodeTo(Schema.String, SchemaTransformation.stringFromUriComponent)
)
```

See also:
- `stringFromBase64String`
- `Schema.StringFromUriComponent` - a ready-made schema wrapping this transformation.

**Signature**

```ts
declare const stringFromUriComponent: Transformation<string, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1441)

Since v4.0.0