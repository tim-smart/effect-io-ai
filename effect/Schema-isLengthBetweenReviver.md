Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLengthBetweenReviver

Reviver for persisted `isLengthBetween` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isLengthBetween`.

**See**

- `isLengthBetween` for creating the corresponding check

**Signature**

```ts
declare const isLengthBetweenReviver: SchemaRepresentation.FilterReviver<{ readonly minimum: number; readonly maximum: number; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L8956)

Since v4.0.0