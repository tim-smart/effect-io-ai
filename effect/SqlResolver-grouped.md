# grouped

Create a resolver the can return multiple results for a single request.

Results are grouped by a common key extracted from the request and result.

To import and use `grouped` from the "SqlResolver" module:

```ts
import * as SqlResolver from "@effect/sql/SqlResolver"
// Can be accessed like this
SqlResolver.grouped
```

**Signature**

```ts
export declare const grouped: <T extends string, I, II, K, RI, A, IA, Row, E, RA = never, R = never>(
  tag: T,
  options:
    | {
        readonly Request: Schema.Schema<I, II, RI>
        readonly RequestGroupKey: (request: Types.NoInfer<I>) => K
        readonly Result: Schema.Schema<A, IA>
        readonly ResultGroupKey: (result: Types.NoInfer<A>, row: Types.NoInfer<Row>) => K
        readonly execute: (requests: Array<Types.NoInfer<II>>) => Effect.Effect<ReadonlyArray<Row>, E>
        readonly withContext?: false
      }
    | {
        readonly Request: Schema.Schema<I, II, RI>
        readonly RequestGroupKey: (request: Types.NoInfer<I>) => K
        readonly Result: Schema.Schema<A, IA, RA>
        readonly ResultGroupKey: (result: Types.NoInfer<A>, row: Types.NoInfer<Row>) => K
        readonly execute: (requests: Array<Types.NoInfer<II>>) => Effect.Effect<ReadonlyArray<Row>, E, R>
        readonly withContext: true
      }
) => Effect.Effect<SqlResolver<T, I, Array<A>, E, RI>, never, RA | R>
```
