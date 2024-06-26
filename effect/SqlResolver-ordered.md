# ordered

Create a resolver for a sql query with a request schema and a result schema.

The request schema is used to validate the input of the query.
The result schema is used to validate the output of the query.

Results are mapped to the requests in order, so the length of the results must match the length of the requests.

To import and use `ordered` from the "SqlResolver" module:

```ts
import * as SqlResolver from "@effect/sql/SqlResolver"
// Can be accessed like this
SqlResolver.ordered
```

**Signature**

```ts
export declare const ordered: <T extends string, I, II, RI, A, IA, _, E, RA = never, R = never>(
  tag: T,
  options:
    | {
        readonly Request: Schema.Schema<I, II, RI>
        readonly Result: Schema.Schema<A, IA, never>
        readonly execute: (requests: Types.NoInfer<II>[]) => Effect.Effect<readonly _[], E, never>
        readonly withContext?: false | undefined
      }
    | {
        readonly Request: Schema.Schema<I, II, RI>
        readonly Result: Schema.Schema<A, IA, RA>
        readonly execute: (requests: Types.NoInfer<II>[]) => Effect.Effect<readonly _[], E, R>
        readonly withContext: true
      }
) => Effect.Effect<SqlResolver<T, I, A, E | ResultLengthMismatch, RI>, never, RA | R>
```
