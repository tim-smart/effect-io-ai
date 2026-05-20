Package: `effect`<br />
Module: `JsonPatch`<br />

## JsonPatch.JsonPatchOperation

A single JSON Patch operation.

**When to use**

Use this type when manually constructing patch operations, accepting patch
operations from callers, or type-checking patch operation structures.

**Details**

Represents one transformation step in a JSON Patch document. This is a subset
of RFC 6902, restricted to operations that can be applied deterministically
without additional context. All fields are readonly, paths use JSON Pointer
syntax, and the empty string `""` refers to the root document. Operations are
discriminated by the `op` field, and the optional `description` field can be
used for documentation.

**Example** (All operation types)

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

- `JsonPatch` - Array of operations forming a complete patch
- `get` - Computes operations automatically from value differences
- `apply` - Applies operations to transform documents

**Signature**

```ts
type JsonPatchOperation = | {
    readonly op: "add"
    /**
     * JSON Pointer to the target location. For arrays, the last token may be `-`
     * to append.
     */
    readonly path: string
    readonly value: Schema.Json
    readonly description?: string
  }
  | {
    readonly op: "remove"
    /** JSON Pointer to the target location. */
    readonly path: string
    readonly description?: string
  }
  | {
    readonly op: "replace"
    /** JSON Pointer to the target location. Use `""` to replace the root document. */
    readonly path: string
    readonly value: Schema.Json
    readonly description?: string
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonPatch.ts#L106)

Since v4.0.0