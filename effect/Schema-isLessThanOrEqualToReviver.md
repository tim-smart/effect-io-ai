Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLessThanOrEqualToReviver

Reviver for persisted `isLessThanOrEqualTo` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isLessThanOrEqualTo`.

**See**

- `isLessThanOrEqualTo` for creating the corresponding check

**Signature**

```ts
declare const isLessThanOrEqualToReviver: SchemaRepresentation.FilterReviver<{ readonly maximum: number; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L8029)

Since v4.0.0