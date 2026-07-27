Package: `effect`<br />
Module: `Schema`<br />

## Schema.DateTimeZonedReviver

Reviver for persisted `DateTimeZoned` declarations.

**When to use**

Use when reconstructing documents that may contain the `DateTimeZoned` schema.

**See**

- `DateTimeZoned` for the corresponding schema

**Signature**

```ts
declare const DateTimeZonedReviver: SchemaRepresentation.DeclarationReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L13929)

Since v4.0.0