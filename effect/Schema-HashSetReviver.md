Package: `effect`<br />
Module: `Schema`<br />

## Schema.HashSetReviver

Reviver for persisted `HashSet` declarations.

**When to use**

Use when reconstructing documents that may contain schemas created by `HashSet`.

**See**

- `HashSet` for creating the corresponding schema

**Signature**

```ts
declare const HashSetReviver: SchemaRepresentation.DeclarationReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L11471)

Since v4.0.0