Package: `effect`<br />
Module: `JsonPatch`<br />

## JsonPatch.JsonPatchOperation

A single JSON Patch operation.

Represents one transformation step in a JSON Patch document. This is a subset of RFC 6902, restricted to operations that can be applied deterministically without additional context.

## When to use this

- Defining patch operation types in your code
- Manually constructing patch operations
- Type-checking patch operation structures

## Behavior

- All fields are readonly; operations are immutable value objects
- Paths use JSON Pointer syntax; empty string `""` refers to the root document
- The `description` field is optional and can be used for documentation
- Operations are discriminated unions based on the `op` field

**Example** (All operation types)

```ts
import * as JsonPatch from "effect/JsonPatch"

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

## See also

- `JsonPatch` - Array of operations forming a complete patch
- `get` - Computes operations automatically from value differences
- `apply` - Applies operations to transform documents

**Signature**

```ts
type JsonPatchOperation = | {
    readonly op: "add"
    /**
     * JSON Pointer to the target location.
     *
     * For arrays, the last token may be `-` to append.
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonPatch.ts#L110)

Since v4.0.0