Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLessThanBigIntReviver

Reviver for persisted `isLessThanBigInt` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isLessThanBigInt`.

**See**

- `isLessThanBigInt` for creating the corresponding check

**Signature**

```ts
declare const isLessThanBigIntReviver: SchemaRepresentation.FilterReviver<{ readonly exclusiveMaximum: bigint; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L15680)

Since v4.0.0