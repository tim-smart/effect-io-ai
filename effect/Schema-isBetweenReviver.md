Package: `effect`<br />
Module: `Schema`<br />

## Schema.isBetweenReviver

Reviver for persisted `isBetween` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isBetween`.

**See**

- `isBetween` for creating the corresponding check

**Signature**

```ts
declare const isBetweenReviver: SchemaRepresentation.FilterReviver<{ readonly minimum: number; readonly maximum: number; readonly exclusiveMinimum?: true | undefined; readonly exclusiveMaximum?: true | undefined; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L8099)

Since v4.0.0