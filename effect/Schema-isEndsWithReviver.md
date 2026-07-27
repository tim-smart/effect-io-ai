Package: `effect`<br />
Module: `Schema`<br />

## Schema.isEndsWithReviver

Reviver for persisted `isEndsWith` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isEndsWith`.

**See**

- `isEndsWith` for creating the corresponding check

**Signature**

```ts
declare const isEndsWithReviver: SchemaRepresentation.FilterReviver<{ readonly endsWith: string; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7275)

Since v4.0.0