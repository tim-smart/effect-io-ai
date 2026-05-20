Package: `effect`<br />
Module: `JsonPatch`<br />

## JsonPatch.JsonPatch

A JSON Patch document (an ordered list of operations).

**When to use**

Use this type when storing, serializing, passing, or validating complete patch
documents.

**Details**

Represents a complete transformation as a readonly sequence of immutable
operations. Operations are applied sequentially from first to last, and later
operations observe the document state produced by earlier operations. An empty
array represents a no-op patch and returns the original document.

**Example** (Multi-operation patch)

```ts
import { JsonPatch } from "effect"

const patch: JsonPatch.JsonPatch = [
  { op: "add", path: "/items/-", value: "apple" },
  { op: "replace", path: "/count", value: 5 },
  { op: "remove", path: "/oldField" }
]

const result = JsonPatch.apply(patch, { count: 3, oldField: "value" })
// { count: 5, items: ["apple"] }
```

**See**

- `JsonPatchOperation` - Individual operation types
- `get` - Generates patches from value differences
- `apply` - Executes patches to transform documents

**Signature**

```ts
type JsonPatch = ReadonlyArray<JsonPatchOperation>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonPatch.ts#L167)

Since v4.0.0