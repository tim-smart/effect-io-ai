Package: `effect`<br />
Module: `Schema`<br />

## Schema.isMinSizeReviver

Reviver for persisted `isMinSize` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isMinSize`.

**See**

- `isMinSize` for creating the corresponding check

**Signature**

```ts
declare const isMinSizeReviver: SchemaRepresentation.FilterReviver<{ readonly minSize: number; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L9020)

Since v4.0.0