Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLessThanOrEqualToBigIntReviver

Reviver for persisted `isLessThanOrEqualToBigInt` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isLessThanOrEqualToBigInt`.

**See**

- `isLessThanOrEqualToBigInt` for creating the corresponding check

**Signature**

```ts
declare const isLessThanOrEqualToBigIntReviver: SchemaRepresentation.FilterReviver<{ readonly maximum: bigint; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L15700)

Since v4.0.0