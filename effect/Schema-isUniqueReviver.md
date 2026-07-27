Package: `effect`<br />
Module: `Schema`<br />

## Schema.isUniqueReviver

Reviver for persisted `isUnique` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isUnique`.

**See**

- `isUnique` for creating the corresponding check

**Signature**

```ts
declare const isUniqueReviver: SchemaRepresentation.FilterReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L9471)

Since v4.0.0