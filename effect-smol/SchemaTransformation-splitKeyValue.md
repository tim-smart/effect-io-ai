Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.splitKeyValue

A transformation that decodes a string into a record of key-value pairs and
encodes a record of key-value pairs into a string.

When to use this:
- Parsing query-string-like or config-file-like strings into records.

Behavior:
- Decode: splits the string by `separator` (default `","`) into pairs,
  then splits each pair by `keyValueSeparator` (default `"="`).
- Encode: joins the record back into a string using the same separators.
- Round-trippable when keys and values don't contain the separators.

**Example** (Parsing key-value pairs)

```ts
import { Schema, SchemaTransformation } from "effect"

const Config = Schema.String.pipe(
  Schema.decodeTo(
    Schema.Record(Schema.String, Schema.String),
    SchemaTransformation.splitKeyValue({ separator: ";", keyValueSeparator: ":" })
  )
)
// "host:localhost;port:3000" → { host: "localhost", port: "3000" }
```

See also:
- `trim`
- `snakeToCamel`

**Signature**

```ts
declare const splitKeyValue: (options?: { readonly separator?: string | undefined; readonly keyValueSeparator?: string | undefined; }) => Transformation<Record<string, string>, string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L699)

Since v4.0.0