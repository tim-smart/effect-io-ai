Package: `effect`<br />
Module: `JsonSchema`<br />

## JsonSchema.toMultiDocumentOpenApi3_1

Converts a `MultiDocument<"draft-2020-12">` to a
`MultiDocument<"openapi-3.1">`.

**When to use**

Use when you need to emit an OpenAPI 3.1 multi-document from canonical JSON
Schema documents.

**Details**

This rewrites `#/$defs/...` refs to `#/components/schemas/...`, sanitizes
definition keys to match the OpenAPI component key pattern
(`^[a-zA-Z0-9.\-_]+$`) by replacing invalid characters with `_`, updates all
`$ref` pointers to use the sanitized keys, and converts all schemas and
definitions in the multi-document.

**Example** (Converting to OpenAPI 3.1)

```ts
import { JsonSchema } from "effect"

const multi: JsonSchema.MultiDocument<"draft-2020-12"> = {
  dialect: "draft-2020-12",
  schemas: [{ $ref: "#/$defs/User" }],
  definitions: {
    User: { type: "object", properties: { name: { type: "string" } } }
  }
}

const openapi = JsonSchema.toMultiDocumentOpenApi3_1(multi)
console.log(openapi.dialect) // "openapi-3.1"
console.log(openapi.schemas[0]) // { $ref: "#/components/schemas/User" }
```

**See**

- `toDocumentDraft07`
- `MultiDocument`

**Signature**

```ts
declare const toMultiDocumentOpenApi3_1: (multiDocument: MultiDocument<"draft-2020-12">) => MultiDocument<"openapi-3.1">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonSchema.ts#L746)

Since v4.0.0