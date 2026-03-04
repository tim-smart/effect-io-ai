Package: `effect`<br />
Module: `Model`<br />

## Model.JsonFromString

A field that represents a JSON value stored as text in the database.

The "json" variants will use the object schema directly.

**Signature**

```ts
declare const JsonFromString: <S extends Schema.Top>(schema: S) => JsonFromString<S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L581)

Since v4.0.0