Package: `effect`<br />
Module: `Schema`<br />

## Schema.isUUIDReviver

Reviver for persisted `isUUID` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isUUID`.

**See**

- `isUUID` for creating the corresponding check

**Signature**

```ts
declare const isUUIDReviver: SchemaRepresentation.FilterReviver<{ readonly version: 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | null; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L6947)

Since v4.0.0