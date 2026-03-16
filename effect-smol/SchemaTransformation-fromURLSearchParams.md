Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.fromURLSearchParams

Decodes a `URLSearchParams` instance into an `unknown` record and encodes
an `unknown` record back to `URLSearchParams`.

When to use this:
- Parsing URL query parameters.

Behavior:
- Decode: extracts entries from URLSearchParams into a plain object.
- Encode: constructs URLSearchParams from the record's entries.

**Example** (Decoding URLSearchParams)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.instanceOf(URLSearchParams).pipe(
  Schema.decodeTo(Schema.Unknown, SchemaTransformation.fromURLSearchParams)
)
```

See also:
- `fromFormData`
- `fromJsonString`

**Signature**

```ts
declare const fromURLSearchParams: Transformation<unknown, URLSearchParams, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1372)

Since v4.0.0