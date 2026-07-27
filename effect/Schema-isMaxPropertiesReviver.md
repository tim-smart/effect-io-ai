Package: `effect`<br />
Module: `Schema`<br />

## Schema.isMaxPropertiesReviver

Reviver for persisted `isMaxProperties` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isMaxProperties`.

**See**

- `isMaxProperties` for creating the corresponding check

**Signature**

```ts
declare const isMaxPropertiesReviver: SchemaRepresentation.FilterReviver<{ readonly maxProperties: number; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L9277)

Since v4.0.0