Package: `effect`<br />
Module: `JsonSchema`<br />

## JsonSchema.resolveTopLevel$ref

If the root schema of a document is a `$ref`, resolves it against the
document's definitions and returns a new document with the inlined
schema. Returns the original document unchanged if the root schema is
not a `$ref` or if the referenced definition is not found.

- Use to dereference a top-level `$ref` before inspecting the root
  schema's properties directly.
- Does not mutate the input. Returns the same object if no change is
  needed, or a shallow copy with the resolved schema.

**Example** (Resolving a top-level $ref)

```ts
import { JsonSchema } from "effect"

const doc: JsonSchema.Document<"draft-2020-12"> = {
  dialect: "draft-2020-12",
  schema: { $ref: "#/$defs/User" },
  definitions: {
    User: { type: "object", properties: { name: { type: "string" } } }
  }
}

const resolved = JsonSchema.resolveTopLevel$ref(doc)
console.log(resolved.schema) // { type: "object", properties: { name: { type: "string" } } }
```

**See**

- `resolve$ref`
- `Document`

**Signature**

```ts
declare const resolveTopLevel$ref: (document: Document<"draft-2020-12">) => Document<"draft-2020-12">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonSchema.ts#L902)

Since v4.0.0