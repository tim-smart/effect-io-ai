Package: `effect`<br />
Module: `Schema`<br />

## Schema.isBase64UrlReviver

Reviver for persisted `isBase64Url` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isBase64Url`.

**See**

- `isBase64Url` for creating the corresponding check

**Signature**

```ts
declare const isBase64UrlReviver: SchemaRepresentation.FilterReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7169)

Since v4.0.0