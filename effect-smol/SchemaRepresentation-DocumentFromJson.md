Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.DocumentFromJson

Schema that decodes a `Document` from JSON and encodes it back.

**When to use**

Use when you need a JSON codec for schema representation documents with
`Schema.decodeUnknownSync` or `Schema.encodeSync`.

**Example** (Round-tripping a Document through JSON)

```ts
import { Schema, SchemaRepresentation } from "effect"

const doc = SchemaRepresentation.fromAST(Schema.String.ast)
const json = Schema.encodeSync(SchemaRepresentation.DocumentFromJson)(doc)
const back = Schema.decodeUnknownSync(SchemaRepresentation.DocumentFromJson)(json)
```

**See**

- `$Document`
- `MultiDocumentFromJson`

**Signature**

```ts
declare const DocumentFromJson: Schema.Codec<Document, Schema.Json, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1683)

Since v4.0.0