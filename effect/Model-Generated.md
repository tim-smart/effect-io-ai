Package: `@effect/sql`<br />
Module: `Model`<br />

## Model.Generated

A field that represents a column that is generated by the database.

It is available for selection and update, but not for insertion.

**Signature**

```ts
declare const Generated: <S extends Schema.Schema.All | Schema.PropertySignature.All>(schema: S) => Generated<S>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/src/Model.ts#L191)

Since v1.0.0