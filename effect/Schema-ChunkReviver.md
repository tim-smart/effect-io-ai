Package: `effect`<br />
Module: `Schema`<br />

## Schema.ChunkReviver

Reviver for persisted `Chunk` declarations.

**When to use**

Use when reconstructing documents that may contain schemas created by `Chunk`.

**See**

- `Chunk` for creating the corresponding schema

**Signature**

```ts
declare const ChunkReviver: SchemaRepresentation.DeclarationReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L11589)

Since v4.0.0