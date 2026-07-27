Package: `effect`<br />
Module: `Schema`<br />

## Schema.isSizeBetweenReviver

Reviver for persisted `isSizeBetween` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isSizeBetween`.

**See**

- `isSizeBetween` for creating the corresponding check

**Signature**

```ts
declare const isSizeBetweenReviver: SchemaRepresentation.FilterReviver<{ readonly minimum: number; readonly maximum: number; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L9151)

Since v4.0.0