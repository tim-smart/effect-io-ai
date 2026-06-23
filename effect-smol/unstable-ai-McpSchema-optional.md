Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.optional

Creates an optional MCP struct-field schema from a required schema.

**Details**

The field may be absent, and explicit `undefined` values are omitted when
encoding.

**Signature**

```ts
declare const optional: <S extends Schema.Constraint>(schema: S) => Schema.decodeTo<Schema.optional<S>, Schema.optionalKey<S>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L81)

Since v4.0.0