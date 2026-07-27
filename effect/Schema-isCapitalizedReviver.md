Package: `effect`<br />
Module: `Schema`<br />

## Schema.isCapitalizedReviver

Reviver for persisted `isCapitalized` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isCapitalized`.

**See**

- `isCapitalized` for creating the corresponding check

**Signature**

```ts
declare const isCapitalizedReviver: SchemaRepresentation.FilterReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7494)

Since v4.0.0