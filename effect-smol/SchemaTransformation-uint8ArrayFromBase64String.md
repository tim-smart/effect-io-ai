Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.uint8ArrayFromBase64String

Decodes a Base64-encoded `string` into a `Uint8Array` and encodes a
`Uint8Array` back to a Base64 string.

When to use this:
- Handling binary data transmitted as Base64 strings (e.g. file uploads,
  API payloads).

Behavior:
- Decode: parses the Base64 string into bytes.
- Encode: encodes the byte array as a Base64 string.

**Example** (Uint8Array from Base64)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.String.pipe(
  Schema.decodeTo(Schema.Uint8Array, SchemaTransformation.uint8ArrayFromBase64String)
)
```

See also:
- `fromJsonString`
- `Schema.Uint8ArrayFromBase64` - a ready-made schema wrapping this transformation.

**Signature**

```ts
declare const uint8ArrayFromBase64String: Transformation<Uint8Array<ArrayBufferLike>, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1313)

Since v4.0.0