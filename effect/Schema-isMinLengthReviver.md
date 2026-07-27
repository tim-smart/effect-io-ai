Package: `effect`<br />
Module: `Schema`<br />

## Schema.isMinLengthReviver

Reviver for persisted `isMinLength` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isMinLength`.

**See**

- `isMinLength` for creating the corresponding check

**Signature**

```ts
declare const isMinLengthReviver: SchemaRepresentation.FilterReviver<{ readonly minLength: number; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L8799)

Since v4.0.0