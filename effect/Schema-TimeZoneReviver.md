Package: `effect`<br />
Module: `Schema`<br />

## Schema.TimeZoneReviver

Reviver for persisted `TimeZone` declarations.

**When to use**

Use when reconstructing documents that may contain the `TimeZone` schema.

**See**

- `TimeZone` for the corresponding schema

**Signature**

```ts
declare const TimeZoneReviver: SchemaRepresentation.DeclarationReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L13819)

Since v4.0.0