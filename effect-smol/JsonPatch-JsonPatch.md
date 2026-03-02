Package: `effect`<br />
Module: `JsonPatch`<br />

## JsonPatch.JsonPatch

A JSON Patch document (an ordered list of operations).

Represents a complete transformation as a sequence of operations. Operations are applied in order, and later operations observe the changes made by earlier ones.

## When to use this

- Storing or serializing patch documents
- Passing patches between functions or systems
- Type-checking patch arrays
- Validating patch structure

## Behavior

- Operations are applied sequentially from first to last
- Empty arrays represent no-op patches (return original document)
- Later operations see the document state after earlier operations
- The array is readonly; individual operations are immutable

**Example** (Multi-operation patch)

```ts
import * as JsonPatch from "effect/JsonPatch"

const patch: JsonPatch.JsonPatch = [
  { op: "add", path: "/items/-", value: "apple" },
  { op: "replace", path: "/count", value: 5 },
  { op: "remove", path: "/oldField" }
]

const result = JsonPatch.apply(patch, { count: 3, oldField: "value" })
// { count: 5, items: ["apple"] }
```

## See also

- `JsonPatchOperation` - Individual operation types
- `get` - Generates patches from value differences
- `apply` - Executes patches to transform documents

**Signature**

```ts
type JsonPatch = ReadonlyArray<JsonPatchOperation>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonPatch.ts#L179)

Since v4.0.0