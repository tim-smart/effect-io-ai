Package: `effect`<br />
Module: `Schema`<br />

## Schema.CauseReasonReviver

Reviver for persisted `CauseReason` declarations.

**When to use**

Use when reconstructing documents that may contain schemas created by `CauseReason`.

**See**

- `CauseReason` for creating the corresponding schema

**Signature**

```ts
declare const CauseReasonReviver: SchemaRepresentation.DeclarationReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L10362)

Since v4.0.0