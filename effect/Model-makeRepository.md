# makeRepository

Create a simple CRUD repository from a model.

To import and use `makeRepository` from the "Model" module:

ts
import \* as Model from "@effect/sql/Model"
// Can be accessed like this
Model.makeRepository
undefined

**Signature**

```ts
export declare const makeRepository: <
  S extends Any,
  Id extends keyof S["Type"] & keyof S["update"]["Type"] & keyof S["fields"]
>(
  Model: S,
  options: { readonly tableName: string; readonly spanPrefix: string; readonly idColumn: Id }
) => Effect.Effect<
  {
    readonly insert: (
      insert: S["insert"]["Type"]
    ) => Effect.Effect<S["Type"], never, S["Context"] | S["insert"]["Context"]>
    readonly insertVoid: (
      insert: S["insert"]["Type"]
    ) => Effect.Effect<void, never, S["Context"] | S["insert"]["Context"]>
    readonly update: (
      update: S["update"]["Type"]
    ) => Effect.Effect<S["Type"], never, S["Context"] | S["update"]["Context"]>
    readonly updateVoid: (
      update: S["update"]["Type"]
    ) => Effect.Effect<void, never, S["Context"] | S["update"]["Context"]>
    readonly findById: (
      id: Schema.Schema.Type<S["fields"][Id]>
    ) => Effect.Effect<Option.Option<S["Type"]>, never, S["Context"] | Schema.Schema.Context<S["fields"][Id]>>
    readonly delete: (
      id: Schema.Schema.Type<S["fields"][Id]>
    ) => Effect.Effect<void, never, Schema.Schema.Context<S["fields"][Id]>>
  },
  never,
  SqlClient
>
```
