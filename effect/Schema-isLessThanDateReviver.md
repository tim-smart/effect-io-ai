Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLessThanDateReviver

Reviver for persisted `isLessThanDate` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isLessThanDate`.

**See**

- `isLessThanDate` for creating the corresponding check

**Signature**

```ts
declare const isLessThanDateReviver: SchemaRepresentation.FilterReviver<{ readonly exclusiveMaximum: globalThis.Date; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L15572)

Since v4.0.0