Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.fromURLSearchParams

Decodes `URLSearchParams` into a nested record using bracket-path keys and
encodes object-like values back into `URLSearchParams`.

**When to use**

Use when you need a schema transformation for query strings whose keys, such
as `filter[name]` or `items[0]`, should become nested data.

**Details**

Decode produces string leaves. Encode flattens nested objects and arrays into
bracket-path entries and returns empty `URLSearchParams` for non-object
inputs.

**Example** (Decoding URLSearchParams)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.instanceOf(URLSearchParams).pipe(
  Schema.decodeTo(Schema.Unknown, SchemaTransformation.fromURLSearchParams)
)
```

**See**

- `fromFormData`
- `fromJsonString`

**Signature**

```ts
declare const fromURLSearchParams: Transformation<unknown, URLSearchParams, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaTransformation.ts#L1690)

Since v4.0.0