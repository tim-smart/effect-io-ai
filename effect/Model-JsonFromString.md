Package: `@effect/sql`<br />
Module: `Model`<br />

## Model.JsonFromString

A field that represents a JSON value stored as text in the database.

The "json" variants will use the object schema directly.

**Signature**

```ts
declare const JsonFromString: <S extends Schema.Schema.All | Schema.PropertySignature.All>(schema: S) => JsonFromString<S>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/src/Model.ts#L604)

Since v1.0.0