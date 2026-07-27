Package: `effect`<br />
Module: `Schema`<br />

## Schema.isStringFiniteReviver

Reviver for persisted `isStringFinite` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isStringFinite`.

**See**

- `isStringFinite` for creating the corresponding check

**Signature**

```ts
declare const isStringFiniteReviver: SchemaRepresentation.FilterReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L6789)

Since v4.0.0