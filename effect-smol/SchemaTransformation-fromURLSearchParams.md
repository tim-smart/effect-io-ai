Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.fromURLSearchParams

Decodes `URLSearchParams` into a nested record using bracket-path keys and
encodes object-like values back into `URLSearchParams`.

Use this for query strings where keys such as `filter[name]` or `items[0]`
should become nested data. Decode produces string leaves. Encode flattens
nested objects and arrays into bracket-path entries and returns empty
`URLSearchParams` for non-object inputs.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1592)

Since v4.0.0