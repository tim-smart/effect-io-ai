Package: `effect`<br />
Module: `Schema`<br />

## Schema.RegExpReviver

Reviver for persisted `RegExp` declarations.

**When to use**

Use when reconstructing documents that may contain the `RegExp` schema.

**See**

- `RegExp` for the corresponding schema

**Signature**

```ts
declare const RegExpReviver: SchemaRepresentation.DeclarationReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L11687)

Since v4.0.0