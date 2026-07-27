Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLowercasedReviver

Reviver for persisted `isLowercased` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isLowercased`.

**See**

- `isLowercased` for creating the corresponding check

**Signature**

```ts
declare const isLowercasedReviver: SchemaRepresentation.FilterReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7440)

Since v4.0.0