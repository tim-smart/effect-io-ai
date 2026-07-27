Package: `effect`<br />
Module: `Schema`<br />

## Schema.isStringSymbolReviver

Reviver for persisted `isStringSymbol` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isStringSymbol`.

**See**

- `isStringSymbol` for creating the corresponding check

**Signature**

```ts
declare const isStringSymbolReviver: SchemaRepresentation.FilterReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L6868)

Since v4.0.0