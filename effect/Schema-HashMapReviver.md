Package: `effect`<br />
Module: `Schema`<br />

## Schema.HashMapReviver

Reviver for persisted `HashMap` declarations.

**When to use**

Use when reconstructing documents that may contain schemas created by `HashMap`.

**See**

- `HashMap` for creating the corresponding schema

**Signature**

```ts
declare const HashMapReviver: SchemaRepresentation.DeclarationReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L11249)

Since v4.0.0