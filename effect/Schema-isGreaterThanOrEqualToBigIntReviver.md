Package: `effect`<br />
Module: `Schema`<br />

## Schema.isGreaterThanOrEqualToBigIntReviver

Reviver for persisted `isGreaterThanOrEqualToBigInt` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isGreaterThanOrEqualToBigInt`.

**See**

- `isGreaterThanOrEqualToBigInt` for creating the corresponding check

**Signature**

```ts
declare const isGreaterThanOrEqualToBigIntReviver: SchemaRepresentation.FilterReviver<{ readonly minimum: bigint; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L15660)

Since v4.0.0