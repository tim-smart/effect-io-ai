Package: `effect`<br />
Module: `Schema`<br />

## Schema.isMaxSizeReviver

Reviver for persisted `isMaxSize` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isMaxSize`.

**See**

- `isMaxSize` for creating the corresponding check

**Signature**

```ts
declare const isMaxSizeReviver: SchemaRepresentation.FilterReviver<{ readonly maxSize: number; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L9083)

Since v4.0.0