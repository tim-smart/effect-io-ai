Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.fromFormData

Decodes a `FormData` instance into an `unknown` record and encodes an
`unknown` record back to `FormData`.

When to use this:
- Handling HTML form submissions or multipart API requests.

Behavior:
- Decode: extracts entries from the FormData into a plain object.
- Encode: constructs a FormData from the record's entries.

**Example** (Decoding FormData)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.instanceOf(FormData).pipe(
  Schema.decodeTo(Schema.Unknown, SchemaTransformation.fromFormData)
)
```

See also:
- `fromURLSearchParams`
- `fromJsonString`

**Signature**

```ts
declare const fromFormData: Transformation<unknown, FormData, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1341)

Since v4.0.0