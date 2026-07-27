Package: `effect`<br />
Module: `Schema`<br />

## Schema.isGreaterThanDateReviver

Reviver for persisted `isGreaterThanDate` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isGreaterThanDate`.

**See**

- `isGreaterThanDate` for creating the corresponding check

**Signature**

```ts
declare const isGreaterThanDateReviver: SchemaRepresentation.FilterReviver<{ readonly exclusiveMinimum: globalThis.Date; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L15532)

Since v4.0.0