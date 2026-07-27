Package: `effect`<br />
Module: `Schema`<br />

## Schema.isMultipleOfReviver

Reviver for persisted `isMultipleOf` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isMultipleOf`.

**See**

- `isMultipleOf` for creating the corresponding check

**Signature**

```ts
declare const isMultipleOfReviver: SchemaRepresentation.FilterReviver<{ readonly divisor: number; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L8158)

Since v4.0.0