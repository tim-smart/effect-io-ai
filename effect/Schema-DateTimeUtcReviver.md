Package: `effect`<br />
Module: `Schema`<br />

## Schema.DateTimeUtcReviver

Reviver for persisted `DateTimeUtc` declarations.

**When to use**

Use when reconstructing documents that may contain the `DateTimeUtc` schema.

**See**

- `DateTimeUtc` for the corresponding schema

**Signature**

```ts
declare const DateTimeUtcReviver: SchemaRepresentation.DeclarationReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L13465)

Since v4.0.0