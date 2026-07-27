Package: `effect`<br />
Module: `Schema`<br />

## Schema.ResultReviver

Reviver for persisted `Result` declarations.

**When to use**

Use when reconstructing documents that may contain schemas created by `Result`.

**See**

- `Result` for creating the corresponding schema

**Signature**

```ts
declare const ResultReviver: SchemaRepresentation.DeclarationReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L9982)

Since v4.0.0