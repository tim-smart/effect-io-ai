Package: `effect`<br />
Module: `Schema`<br />

## Schema.isBase64Reviver

Reviver for persisted `isBase64` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isBase64`.

**See**

- `isBase64` for creating the corresponding check

**Signature**

```ts
declare const isBase64Reviver: SchemaRepresentation.FilterReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7115)

Since v4.0.0