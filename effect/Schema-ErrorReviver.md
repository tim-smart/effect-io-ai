Package: `effect`<br />
Module: `Schema`<br />

## Schema.ErrorReviver

Reviver for persisted `Error` declarations.

**When to use**

Use when reconstructing documents that may contain schemas created by `Error`.

**See**

- `Error` for creating the corresponding schema

**Signature**

```ts
declare const ErrorReviver: SchemaRepresentation.DeclarationReviver<ErrorRepresentationPayload>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L10684)

Since v4.0.0