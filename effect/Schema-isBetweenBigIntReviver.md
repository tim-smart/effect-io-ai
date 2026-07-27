Package: `effect`<br />
Module: `Schema`<br />

## Schema.isBetweenBigIntReviver

Reviver for persisted `isBetweenBigInt` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isBetweenBigInt`.

**See**

- `isBetweenBigInt` for creating the corresponding check

**Signature**

```ts
declare const isBetweenBigIntReviver: SchemaRepresentation.FilterReviver<{ readonly minimum: bigint; readonly maximum: bigint; readonly exclusiveMinimum?: true | undefined; readonly exclusiveMaximum?: true | undefined; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L15720)

Since v4.0.0