Package: `effect`<br />
Module: `SqlModel`<br />

## SqlModel.makeRepository

Create a simple CRUD repository from a model.

**Signature**

```ts
declare const makeRepository: <S extends Model.Any, Id extends (keyof S["Type"]) & (keyof S["update"]["Type"]) & (keyof S["fields"])>(Model: S, options: { readonly tableName: string; readonly spanPrefix: string; readonly idColumn: Id; }) => Effect.Effect<{ readonly insert: (insert: S["insert"]["Type"]) => Effect.Effect<S["Type"], Schema.SchemaError | SqlError, S["DecodingServices"] | S["insert"]["EncodingServices"]>; readonly insertVoid: (insert: S["insert"]["Type"]) => Effect.Effect<void, Schema.SchemaError | SqlError, S["insert"]["EncodingServices"]>; readonly update: (update: S["update"]["Type"]) => Effect.Effect<S["Type"], Schema.SchemaError | SqlError, S["DecodingServices"] | S["update"]["EncodingServices"]>; readonly updateVoid: (update: S["update"]["Type"]) => Effect.Effect<void, Schema.SchemaError | SqlError, S["update"]["EncodingServices"]>; readonly findById: (id: S["fields"][Id]["Type"]) => Effect.Effect<S["Type"], Cause.NoSuchElementError | Schema.SchemaError | SqlError, S["DecodingServices"] | S["fields"][Id]["EncodingServices"]>; readonly delete: (id: S["fields"][Id]["Type"]) => Effect.Effect<void, Schema.SchemaError | SqlError, S["fields"][Id]["EncodingServices"]>; }, never, SqlClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlModel.ts#L24)

Since v4.0.0