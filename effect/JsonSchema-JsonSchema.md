Package: `effect`<br />
Module: `JsonSchema`<br />

## JsonSchema.JsonSchema

A plain object representing a single JSON Schema node.

**When to use**

Use to represent an arbitrary JSON Schema object regardless of dialect.

**Details**

This is an open record type (`[x: string]: unknown`) so it can hold any JSON
Schema keyword. Most functions in this module accept or return this type.

**Signature**

```ts
export interface JsonSchema {
  [x: string]: unknown
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/JsonSchema.ts#L31)

Since v4.0.0