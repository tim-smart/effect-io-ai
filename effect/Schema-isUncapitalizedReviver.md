Package: `effect`<br />
Module: `Schema`<br />

## Schema.isUncapitalizedReviver

Reviver for persisted `isUncapitalized` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isUncapitalized`.

**See**

- `isUncapitalized` for creating the corresponding check

**Signature**

```ts
declare const isUncapitalizedReviver: SchemaRepresentation.FilterReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7548)

Since v4.0.0