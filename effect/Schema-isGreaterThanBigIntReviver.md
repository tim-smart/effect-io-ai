Package: `effect`<br />
Module: `Schema`<br />

## Schema.isGreaterThanBigIntReviver

Reviver for persisted `isGreaterThanBigInt` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isGreaterThanBigInt`.

**See**

- `isGreaterThanBigInt` for creating the corresponding check

**Signature**

```ts
declare const isGreaterThanBigIntReviver: SchemaRepresentation.FilterReviver<{ readonly exclusiveMinimum: bigint; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L15640)

Since v4.0.0