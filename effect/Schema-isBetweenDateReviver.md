Package: `effect`<br />
Module: `Schema`<br />

## Schema.isBetweenDateReviver

Reviver for persisted `isBetweenDate` checks.

**When to use**

Use when reconstructing documents that may contain checks created by `isBetweenDate`.

**See**

- `isBetweenDate` for creating the corresponding check

**Signature**

```ts
declare const isBetweenDateReviver: SchemaRepresentation.FilterReviver<{ readonly minimum: globalThis.Date; readonly maximum: globalThis.Date; readonly exclusiveMinimum?: true | undefined; readonly exclusiveMaximum?: true | undefined; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L15612)

Since v4.0.0