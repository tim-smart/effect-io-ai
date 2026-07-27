Package: `effect`<br />
Module: `Schema`<br />

## Schema.isGreaterThanReviver

Reviver for persisted `isGreaterThan` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isGreaterThan`.

**See**

- `isGreaterThan` for creating the corresponding check

**Signature**

```ts
declare const isGreaterThanReviver: SchemaRepresentation.FilterReviver<{ readonly exclusiveMinimum: number; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7879)

Since v4.0.0