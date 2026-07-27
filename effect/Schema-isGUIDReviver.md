Package: `effect`<br />
Module: `Schema`<br />

## Schema.isGUIDReviver

Reviver for persisted `isGUID` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isGUID`.

**See**

- `isGUID` for creating the corresponding check

**Signature**

```ts
declare const isGUIDReviver: SchemaRepresentation.FilterReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7009)

Since v4.0.0