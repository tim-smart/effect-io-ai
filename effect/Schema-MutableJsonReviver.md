Package: `effect`<br />
Module: `Schema`<br />

## Schema.MutableJsonReviver

Reviver for persisted `MutableJson` declarations.

**When to use**

Use when reconstructing documents that may contain the `MutableJson` schema.

**See**

- `MutableJson` for the corresponding mutable JSON schema

**Signature**

```ts
declare const MutableJsonReviver: SchemaRepresentation.DeclarationReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L16033)

Since v4.0.0