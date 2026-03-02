Package: `effect`<br />
Module: `Schema`<br />

## Schema.fromJsonString

Returns a schema that decodes a JSON string and then decodes the parsed value
using the given schema.

This is useful when working with JSON-encoded strings where the actual
structure of the value is known and described by an existing schema.

The resulting schema first parses the input string as JSON, and then runs the
provided schema on the parsed result.

**Example**

```ts
import { Schema } from "effect"

const schema = Schema.Struct({ a: Schema.Number })
const schemaFromJsonString = Schema.fromJsonString(schema)

Schema.decodeUnknownSync(schemaFromJsonString)(`{"a":1,"b":2}`)
// => { a: 1 }
```

**Json Schema Generation**

When using `fromJsonString` with `draft-2020-12` or `openApi3.1`, the
resulting schema will be a JSON Schema with a `contentSchema` property that
contains the JSON Schema for the given schema.

**Example**

```ts
import { Schema } from "effect"

const original = Schema.Struct({ a: Schema.String })
const schema = Schema.fromJsonString(original)

const document = Schema.toJsonSchemaDocument(schema)

console.log(JSON.stringify(document, null, 2))
// {
//   "source": "draft-2020-12",
//   "schema": {
//     "type": "string",
//     "contentMediaType": "application/json",
//     "contentSchema": {
//       "type": "object",
//       "properties": {
//         "a": {
//           "type": "string"
//         }
//       },
//       "required": [
//         "a"
//       ],
//       "additionalProperties": false
//     }
//   },
//   "definitions": {}
// }
```

**Signature**

```ts
declare const fromJsonString: <S extends Top>(schema: S) => fromJsonString<S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7055)

Since v4.0.0