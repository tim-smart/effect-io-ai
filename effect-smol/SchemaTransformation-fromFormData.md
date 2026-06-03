Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.fromFormData

Decodes a `FormData` instance into a nested record using bracket-path keys and
encodes object-like values back into `FormData`.

**When to use**

Use when you need a schema transformation for form or multipart payloads
whose keys, such as `user[name]` or `items[0]`, should become nested data.

**Details**

Decode preserves string and `Blob` leaves. Encode flattens nested objects and
arrays into bracket-path entries and returns an empty `FormData` for
non-object inputs.

**Example** (Decoding FormData)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.instanceOf(FormData).pipe(
  Schema.decodeTo(Schema.Unknown, SchemaTransformation.fromFormData)
)
```

**See**

- `fromURLSearchParams`
- `fromJsonString`

**Signature**

```ts
declare const fromFormData: Transformation<unknown, FormData, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1688)

Since v4.0.0