Package: `effect`<br />
Module: `SqlModel`<br />

## SqlModel.makeDataLoaders

Create some simple data loaders from a model.

**Signature**

```ts
declare const makeDataLoaders: <S extends Model.Any, Id extends (keyof S["Type"]) & (keyof S["update"]["Type"]) & (keyof S["fields"])>(Model: S, options: { readonly tableName: string; readonly spanPrefix: string; readonly idColumn: Id; readonly window: Input; readonly maxBatchSize?: number | undefined; }) => Effect.Effect<{ readonly insert: (insert: S["insert"]["Type"]) => Effect.Effect<S["Type"], SqlError | Schema.SchemaError, S["DecodingServices"] | S["insert"]["EncodingServices"]>; readonly insertVoid: (insert: S["insert"]["Type"]) => Effect.Effect<void, SqlError | Schema.SchemaError, S["insert"]["EncodingServices"]>; readonly findById: (id: S["fields"][Id]["Type"]) => Effect.Effect<S["Type"], SqlError | Schema.SchemaError | Cause.NoSuchElementError, S["DecodingServices"] | S["fields"][Id]["EncodingServices"]>; readonly delete: (id: S["fields"][Id]["Type"]) => Effect.Effect<void, SqlError | Schema.SchemaError, S["fields"][Id]["EncodingServices"]>; }, never, SqlClient | Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlModel.ts#L204)

Since v4.0.0