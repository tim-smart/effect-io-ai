Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.splitKeyValue

Transforms a string into a record of key-value pairs and
encodes a record of key-value pairs into a string.

**When to use**

Use when you need a schema transformation to parse query-string-like or
config-file-like strings into records.

**Details**

Decoding splits the string by `separator` (default `","`) into pairs, then
splits each pair by `keyValueSeparator` (default `"="`). Encoding joins the
record back into a string using the same separators. The transformation is
round-trippable when keys and values do not contain the separators.

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

**See**

- `trim`
- `snakeToCamel`

**Signature**

```ts
declare const splitKeyValue: (options?: { readonly separator?: string | undefined; readonly keyValueSeparator?: string | undefined; }) => Transformation<Record<string, string>, string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L657)

Since v4.0.0