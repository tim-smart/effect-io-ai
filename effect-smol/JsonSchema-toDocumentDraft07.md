Package: `effect`<br />
Module: `JsonSchema`<br />

## JsonSchema.toDocumentDraft07

Converts a `Document<"draft-2020-12">` to a `Document<"draft-07">`.

- Use when you need to output a schema in Draft-07 format.
- Rewrites `#/$defs/...` refs to `#/definitions/...`.
- Converts Draft-2020-12 tuple syntax (`prefixItems` + `items`) to
  Draft-07 form (`items` as array + `additionalItems`).
- Converts both the root schema and all definitions.
- Does not mutate the input. Allocates a new `Document`.
- Unsupported Draft-2020-12 keywords are dropped.

**Example** (Converting to Draft-07)

```ts
import { JsonSchema } from "effect"

const doc = JsonSchema.fromSchemaDraft2020_12({
  type: "array",
  prefixItems: [{ type: "string" }, { type: "number" }],
  items: { type: "boolean" }
})

const draft07 = JsonSchema.toDocumentDraft07(doc)
console.log(draft07.dialect)                // "draft-07"
console.log(draft07.schema.items)           // [{ type: "string" }, { type: "number" }]
console.log(draft07.schema.additionalItems) // { type: "boolean" }
```

**See**

- `fromSchemaDraft07`
- `toMultiDocumentOpenApi3_1`

**Signature**

```ts
declare const toDocumentDraft07: (document: Document<"draft-2020-12">) => Document<"draft-07">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonSchema.ts#L497)

Since v4.0.0