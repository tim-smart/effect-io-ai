# makeDataLoaders

Create some simple data loaders from a model.

To import and use `makeDataLoaders` from the "Model" module:

ts
import \* as Model from "@effect/sql/Model"
// Can be accessed like this
Model.makeDataLoaders
undefined

**Signature**

```ts
export declare const makeDataLoaders: <
  S extends AnyNoContext,
  Id extends keyof S["Type"] & keyof S["update"]["Type"] & keyof S["fields"]
>(
  Model: S,
  options: {
    readonly tableName: string
    readonly spanPrefix: string
    readonly idColumn: Id
    readonly window: DurationInput
    readonly maxBatchSize?: number | undefined
  }
) => Effect.Effect<
  {
    readonly insert: (insert: S["insert"]["Type"]) => Effect.Effect<S["Type"]>
    readonly insertVoid: (insert: S["insert"]["Type"]) => Effect.Effect<void>
    readonly findById: (id: Schema.Schema.Type<S["fields"][Id]>) => Effect.Effect<Option.Option<S["Type"]>>
    readonly delete: (id: Schema.Schema.Type<S["fields"][Id]>) => Effect.Effect<void>
  },
  never,
  SqlClient | Scope
>
```
