Package: `effect`<br />
Module: `Schema`<br />

## Schema.ReadonlyMapReviver

Reviver for persisted `ReadonlyMap` declarations.

**When to use**

Use when reconstructing documents that may contain schemas created by `ReadonlyMap`.

**See**

- `ReadonlyMap` for creating the corresponding schema

**Signature**

```ts
declare const ReadonlyMapReviver: SchemaRepresentation.DeclarationReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L11135)

Since v4.0.0