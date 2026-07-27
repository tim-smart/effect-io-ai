Package: `effect`<br />
Module: `Schema`<br />

## Schema.ExitReviver

Reviver for persisted `Exit` declarations.

**When to use**

Use when reconstructing documents that may contain schemas created by `Exit`.

**See**

- `Exit` for creating the corresponding schema

**Signature**

```ts
declare const ExitReviver: SchemaRepresentation.DeclarationReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L10928)

Since v4.0.0