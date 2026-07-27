Package: `effect`<br />
Module: `Schema`<br />

## Schema.BigDecimalReviver

Reviver for persisted `BigDecimal` declarations.

**When to use**

Use when reconstructing documents that may contain the `BigDecimal` schema.

**See**

- `BigDecimal` for the corresponding schema

**Signature**

```ts
declare const BigDecimalReviver: SchemaRepresentation.DeclarationReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L12326)

Since v4.0.0