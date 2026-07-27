Package: `effect`<br />
Module: `Schema`<br />

## Schema.isIncludesReviver

Reviver for persisted `isIncludes` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isIncludes`.

**See**

- `isIncludes` for creating the corresponding check

**Signature**

```ts
declare const isIncludesReviver: SchemaRepresentation.FilterReviver<{ readonly includes: string; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7330)

Since v4.0.0