Package: `effect`<br />
Module: `Schema`<br />

## Schema.TimeZoneOffsetReviver

Reviver for persisted `TimeZoneOffset` declarations.

**When to use**

Use when reconstructing documents that may contain the `TimeZoneOffset` schema.

**See**

- `TimeZoneOffset` for the corresponding schema

**Signature**

```ts
declare const TimeZoneOffsetReviver: SchemaRepresentation.DeclarationReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L13645)

Since v4.0.0