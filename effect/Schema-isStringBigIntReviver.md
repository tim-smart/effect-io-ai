Package: `effect`<br />
Module: `Schema`<br />

## Schema.isStringBigIntReviver

Reviver for persisted `isStringBigInt` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isStringBigInt`.

**See**

- `isStringBigInt` for creating the corresponding check

**Signature**

```ts
declare const isStringBigIntReviver: SchemaRepresentation.FilterReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L6831)

Since v4.0.0