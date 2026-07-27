Package: `effect`<br />
Module: `Schema`<br />

## Schema.DurationReviver

Reviver for persisted `Duration` declarations.

**When to use**

Use when reconstructing documents that may contain the `Duration` schema.

**See**

- `Duration` for the corresponding schema

**Signature**

```ts
declare const DurationReviver: SchemaRepresentation.DeclarationReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L12068)

Since v4.0.0