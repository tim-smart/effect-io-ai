Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLessThanOrEqualToDateReviver

Reviver for persisted `isLessThanOrEqualToDate` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isLessThanOrEqualToDate`.

**See**

- `isLessThanOrEqualToDate` for creating the corresponding check

**Signature**

```ts
declare const isLessThanOrEqualToDateReviver: SchemaRepresentation.FilterReviver<{ readonly maximum: globalThis.Date; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L15592)

Since v4.0.0