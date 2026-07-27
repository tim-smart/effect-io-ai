Package: `effect`<br />
Module: `Schema`<br />

## Schema.isFiniteReviver

Reviver for persisted `isFinite` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isFinite`.

**See**

- `isFinite` for creating the corresponding check

**Signature**

```ts
declare const isFiniteReviver: SchemaRepresentation.FilterReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7604)

Since v4.0.0