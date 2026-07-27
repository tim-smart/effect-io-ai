Package: `effect`<br />
Module: `Schema`<br />

## Schema.RedactedReviver

Reviver for persisted `Redacted` declarations.

**When to use**

Use when reconstructing documents that may contain schemas created by `Redacted`.

**See**

- `Redacted` for creating the corresponding schema

**Signature**

```ts
declare const RedactedReviver: SchemaRepresentation.DeclarationReviver<RedactedRepresentationPayload>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L10155)

Since v4.0.0