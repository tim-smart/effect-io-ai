Package: `effect`<br />
Module: `Schema`<br />

## Schema.TimeZoneNamedReviver

Reviver for persisted `TimeZoneNamed` declarations.

**When to use**

Use when reconstructing documents that may contain the `TimeZoneNamed` schema.

**See**

- `TimeZoneNamed` for the corresponding schema

**Signature**

```ts
declare const TimeZoneNamedReviver: SchemaRepresentation.DeclarationReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L13715)

Since v4.0.0