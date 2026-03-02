Package: `effect`<br />
Module: `JsonPatch`<br />

## JsonPatch.get

Compute a patch that transforms `oldValue` into `newValue`.

Generates a structural diff between two JSON values, producing a patch that when applied to `oldValue` yields `newValue`.

## When to use this

- Computing differences between JSON documents
- Detecting changes in data structures
- Generating patches for synchronization or version control
- Creating minimal update operations from before/after states

## Behavior

- Returns an empty array if values are identical (same reference or deep equal)
- Does not mutate inputs; returns a new patch array
- Primitives (numbers, strings, booleans, null) result in a root `replace` operation
- Arrays are compared by index position; no move or copy detection
- Objects are compared by key; keys processed in sorted order for stable output
- Array removals emitted from highest to lowest index to prevent index shifting
- Output is deterministic but not guaranteed to be minimal
- Nested structures are recursively diffed

**Example** (Computing object diff)

```ts
import * as JsonPatch from "effect/JsonPatch"

const oldValue = { users: [{ id: 1, name: "Alice" }], count: 1 }
const newValue = { users: [{ id: 1, name: "Bob" }, { id: 2, name: "Charlie" }], count: 2 }

const patch = JsonPatch.get(oldValue, newValue)
// [
//   { op: "replace", path: "/users/0/name", value: "Bob" },
//   { op: "add", path: "/users/1", value: { id: 2, name: "Charlie" } },
//   { op: "replace", path: "/count", value: 2 }
// ]
```

## See also

- `apply` - Applies the generated patch to a document
- `JsonPatchOperation` - The operation types in the patch

**Signature**

```ts
declare const get: (oldValue: Schema.Json, newValue: Schema.Json) => JsonPatch
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonPatch.ts#L227)

Since v4.0.0