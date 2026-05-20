Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.asserts

Asserts that an input satisfies the schema's decoded type side.

**Details**

The assertion returns normally when validation succeeds and throws when the
input does not satisfy the schema.

**Signature**

```ts
declare const asserts: <S extends Schema.Top, I>(schema: S, input: I) => asserts input is I & S["Type"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L176)

Since v4.0.0