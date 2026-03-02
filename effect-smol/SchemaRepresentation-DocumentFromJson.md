Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.DocumentFromJson

Schema codec that decodes a `Document` from JSON and encodes it back.

- Use with `Schema.decodeUnknownSync` / `Schema.encodeSync` to
  serialize/deserialize documents.

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
declare const DocumentFromJson: Schema.Codec<Document, unknown, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1649)

Since v4.0.0