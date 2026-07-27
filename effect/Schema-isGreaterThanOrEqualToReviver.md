Package: `effect`<br />
Module: `Schema`<br />

## Schema.isGreaterThanOrEqualToReviver

Reviver for persisted `isGreaterThanOrEqualTo` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isGreaterThanOrEqualTo`.

**See**

- `isGreaterThanOrEqualTo` for creating the corresponding check

**Signature**

```ts
declare const isGreaterThanOrEqualToReviver: SchemaRepresentation.FilterReviver<{ readonly minimum: number; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7929)

Since v4.0.0