Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLessThanReviver

Reviver for persisted `isLessThan` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isLessThan`.

**See**

- `isLessThan` for creating the corresponding check

**Signature**

```ts
declare const isLessThanReviver: SchemaRepresentation.FilterReviver<{ readonly exclusiveMaximum: number; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7979)

Since v4.0.0