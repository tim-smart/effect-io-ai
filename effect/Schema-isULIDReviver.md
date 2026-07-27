Package: `effect`<br />
Module: `Schema`<br />

## Schema.isULIDReviver

Reviver for persisted `isULID` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isULID`.

**See**

- `isULID` for creating the corresponding check

**Signature**

```ts
declare const isULIDReviver: SchemaRepresentation.FilterReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7062)

Since v4.0.0