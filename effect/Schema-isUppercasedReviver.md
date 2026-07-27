Package: `effect`<br />
Module: `Schema`<br />

## Schema.isUppercasedReviver

Reviver for persisted `isUppercased` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isUppercased`.

**See**

- `isUppercased` for creating the corresponding check

**Signature**

```ts
declare const isUppercasedReviver: SchemaRepresentation.FilterReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7386)

Since v4.0.0