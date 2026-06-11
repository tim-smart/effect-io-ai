Package: `effect`<br />
Module: `JsonSchema`<br />

## JsonSchema.resolveTopLevel$ref

Resolves a document whose root schema is a top-level `$ref`.

**When to use**

Use when you need to dereference a top-level `$ref` before inspecting the
root JSON Schema object's properties directly.

**Details**

This returns the same object if no change is needed, or a shallow copy with
the resolved schema.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonSchema.ts#L940)

Since v4.0.0