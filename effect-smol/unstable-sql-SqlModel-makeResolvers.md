Package: `effect`<br />
Module: `SqlModel`<br />

## SqlModel.makeResolvers

Create some simple data loaders from a model.

**Signature**

```ts
declare const makeResolvers: <S extends Model.Any, Id extends (keyof S["Type"]) & (keyof S["update"]["Type"]) & (keyof S["fields"])>(Model: S, options: { readonly tableName: string; readonly spanPrefix: string; readonly idColumn: Id; }) => Effect.Effect<{ readonly insert: RequestResolver.RequestResolver<SqlResolver.SqlRequest<S["insert"]["Type"], S["Type"], ResultLengthMismatch | SqlError, S["insert"]["EncodingServices"]>>; readonly insertVoid: RequestResolver.RequestResolver<SqlResolver.SqlRequest<S["insert"]["Type"], void, SqlError, S["insert"]["EncodingServices"]>>; readonly findById: RequestResolver.RequestResolver<SqlResolver.SqlRequest<S["fields"][Id]["Type"], S["Type"], Cause.NoSuchElementError | SqlError, S["DecodingServices"] | S["fields"][Id]["EncodingServices"]>>; readonly delete: RequestResolver.RequestResolver<SqlResolver.SqlRequest<S["fields"][Id]["Type"], void, SqlError, S["fields"][Id]["EncodingServices"]>>; }, never, SqlClient | Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlModel.ts#L202)

Since v4.0.0