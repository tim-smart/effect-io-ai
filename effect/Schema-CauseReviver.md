Package: `effect`<br />
Module: `Schema`<br />

## Schema.CauseReviver

Reviver for persisted `Cause` declarations.

**When to use**

Use when reconstructing documents that may contain schemas created by `Cause`.

**See**

- `Cause` for creating the corresponding schema

**Signature**

```ts
declare const CauseReviver: SchemaRepresentation.DeclarationReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L10526)

Since v4.0.0