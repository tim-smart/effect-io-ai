Package: `effect`<br />
Module: `JsonPatch`<br />

## JsonPatch.JsonPatchOperation

A single JSON Patch operation.

**When to use**

Use to manually construct patch operations, accept patch operations from
callers, or type-check patch operation structures.

**Details**

Represents one transformation step in a JSON Patch document. This is a subset
of RFC 6902, restricted to operations that can be applied deterministically
without additional context. All fields are readonly, paths use JSON Pointer
syntax, and the empty string `""` refers to the root document. Operations are
discriminated by the `op` field, and the optional `description` field can be
used for documentation.

**Example** (Defining all operation types)

```ts
import { JsonPatch } from "effect"

const addOp: JsonPatch.JsonPatchOperation = {
  op: "add",
  path: "/users/-",
  value: { id: 1, name: "Alice" }
}

const removeOp: JsonPatch.JsonPatchOperation = {
  op: "remove",
  path: "/users/0"
}

const replaceOp: JsonPatch.JsonPatchOperation = {
  op: "replace",
  path: "/users/0/name",
  value: "Bob"
}
```

**See**

- `JsonPatch` for the array of operations forming a complete patch
- `get` to compute operations automatically from value differences
- `apply` to apply operations to transform documents

**Signature**

```ts
type JsonPatchOperation = | {
    readonly op: "add"
    /**
     * JSON Pointer to the target location. For arrays, the last token may be `-`
     * to append.
     *
     * **When to use**
     *
     * Use to identify where the `add` operation inserts its value.
     */
    readonly path: string
    readonly value: Schema.Json
    readonly description?: string
  }
  | {
    readonly op: "remove"
    /**
     * JSON Pointer to the target location.
     *
     * **When to use**
     *
     * Use to identify which location the `remove` operation deletes.
     */
    readonly path: string
    readonly description?: string
  }
  | {
    readonly op: "replace"
    /**
     * JSON Pointer to the target location. Use `""` to replace the root document.
     *
     * **When to use**
     *
     * Use to identify which location the `replace` operation overwrites.
     */
    readonly path: string
    readonly value: Schema.Json
    readonly description?: string
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonPatch.ts#L61)

Since v4.0.0