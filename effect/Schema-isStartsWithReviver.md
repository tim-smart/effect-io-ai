Package: `effect`<br />
Module: `Schema`<br />

## Schema.isStartsWithReviver

Reviver for persisted `isStartsWith` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isStartsWith`.

**See**

- `isStartsWith` for creating the corresponding check

**Signature**

```ts
declare const isStartsWithReviver: SchemaRepresentation.FilterReviver<{ readonly startsWith: string; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7221)

Since v4.0.0