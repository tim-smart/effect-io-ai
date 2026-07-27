Package: `effect`<br />
Module: `Schema`<br />

## Schema.isPatternReviver

Reviver for persisted `isPattern` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isPattern`.

**See**

- `isPattern` for creating the corresponding check

**Signature**

```ts
declare const isPatternReviver: SchemaRepresentation.FilterReviver<{ readonly source: string; readonly flags: string; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L6743)

Since v4.0.0