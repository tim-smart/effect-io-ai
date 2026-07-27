Package: `effect`<br />
Module: `Schema`<br />

## Schema.isTrimmedReviver

Reviver for persisted `isTrimmed` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isTrimmed`.

**See**

- `isTrimmed` for creating the corresponding check

**Signature**

```ts
declare const isTrimmedReviver: SchemaRepresentation.FilterReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L6683)

Since v4.0.0