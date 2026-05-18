Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.asserts

Creates an assertion function that narrows an input to the schema's decoded type
side.

The assertion returns normally when validation succeeds and throws when the
input does not satisfy the schema.

**Signature**

```ts
declare const asserts: <T>(schema: Schema.Schema<T>) => <I>(input: I) => asserts input is I & T
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L167)

Since v4.0.0