Package: `effect`<br />
Module: `Schema`<br />

## Schema.isPropertyNamesReviver

Reviver for persisted `isPropertyNames` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isPropertyNames`.

**See**

- `isPropertyNames` for creating the corresponding check

**Signature**

```ts
declare const isPropertyNamesReviver: SchemaRepresentation.FilterReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L9416)

Since v4.0.0