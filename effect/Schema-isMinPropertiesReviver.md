Package: `effect`<br />
Module: `Schema`<br />

## Schema.isMinPropertiesReviver

Reviver for persisted `isMinProperties` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isMinProperties`.

**See**

- `isMinProperties` for creating the corresponding check

**Signature**

```ts
declare const isMinPropertiesReviver: SchemaRepresentation.FilterReviver<{ readonly minProperties: number; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L9215)

Since v4.0.0