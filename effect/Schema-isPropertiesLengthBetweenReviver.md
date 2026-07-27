Package: `effect`<br />
Module: `Schema`<br />

## Schema.isPropertiesLengthBetweenReviver

Reviver for persisted `isPropertiesLengthBetween` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isPropertiesLengthBetween`.

**See**

- `isPropertiesLengthBetween` for creating the corresponding check

**Signature**

```ts
declare const isPropertiesLengthBetweenReviver: SchemaRepresentation.FilterReviver<{ readonly minimum: number; readonly maximum: number; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L9345)

Since v4.0.0