Package: `effect`<br />
Module: `JsonPatch`<br />

## JsonPatch.get

Computes a structural patch that transforms `oldValue` into `newValue`.

**When to use**

Use to compute differences between JSON documents, detect structural
changes, or create deterministic update operations from before and after
states.

**Details**

Generates a structural diff between two JSON values, producing a patch that
yields `newValue` when applied to `oldValue`. It returns an empty array when
values are identical, recursively diffs nested structures, emits root
`replace` operations for primitive changes, and processes object keys in
sorted order for stable output.

**Gotchas**

Arrays are compared by index position, with no move or copy detection. Array
removals are emitted from highest to lowest index to prevent index shifting.
The output is deterministic but not guaranteed to be minimal.

**Example** (Computing object diff)

```ts
import { JsonPatch } from "effect"

const oldValue = { users: [{ id: 1, name: "Alice" }], count: 1 }
const newValue = { users: [{ id: 1, name: "Bob" }, { id: 2, name: "Charlie" }], count: 2 }

const patch = JsonPatch.get(oldValue, newValue)
// [
//   { op: "replace", path: "/users/0/name", value: "Bob" },
//   { op: "add", path: "/users/1", value: { id: 2, name: "Charlie" } },
//   { op: "replace", path: "/count", value: 2 }
// ]
```

**See**

- `apply` to apply the generated patch to a document
- `JsonPatchOperation` for the operation types in the patch

**Signature**

```ts
declare const get: (oldValue: Schema.Json, newValue: Schema.Json) => JsonPatch
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonPatch.ts#L236)

Since v4.0.0