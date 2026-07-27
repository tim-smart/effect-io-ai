Package: `effect`<br />
Module: `Schema`<br />

## Schema.ReadonlySetReviver

Reviver for persisted `ReadonlySet` declarations.

**When to use**

Use when reconstructing documents that may contain schemas created by `ReadonlySet`.

**See**

- `ReadonlySet` for creating the corresponding schema

**Signature**

```ts
declare const ReadonlySetReviver: SchemaRepresentation.DeclarationReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L11360)

Since v4.0.0