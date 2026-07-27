Package: `effect`<br />
Module: `Schema`<br />

## Schema.isIntReviver

Reviver for persisted `isInt` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isInt`.

**See**

- `isInt` for creating the corresponding check

**Signature**

```ts
declare const isIntReviver: SchemaRepresentation.FilterReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L8217)

Since v4.0.0