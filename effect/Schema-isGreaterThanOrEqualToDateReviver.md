Package: `effect`<br />
Module: `Schema`<br />

## Schema.isGreaterThanOrEqualToDateReviver

Reviver for persisted `isGreaterThanOrEqualToDate` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isGreaterThanOrEqualToDate`.

**See**

- `isGreaterThanOrEqualToDate` for creating the corresponding check

**Signature**

```ts
declare const isGreaterThanOrEqualToDateReviver: SchemaRepresentation.FilterReviver<{ readonly minimum: globalThis.Date; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L15552)

Since v4.0.0