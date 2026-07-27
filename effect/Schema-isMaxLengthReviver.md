Package: `effect`<br />
Module: `Schema`<br />

## Schema.isMaxLengthReviver

Reviver for persisted `isMaxLength` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isMaxLength`.

**See**

- `isMaxLength` for creating the corresponding check

**Signature**

```ts
declare const isMaxLengthReviver: SchemaRepresentation.FilterReviver<{ readonly maxLength: number; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L8885)

Since v4.0.0