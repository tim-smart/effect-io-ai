# grouped

Create a resolver the can return multiple results for a single request.

Results are grouped by a common key extracted from the request and result.

To import and use `grouped` from the "Resolver" module:

```ts
import * as Resolver from "@effect/sql/Resolver"
// Can be accessed like this
Resolver.grouped
```

**Signature**

```ts
export declare const grouped: <T extends string, I, II, K, RI, A, IA, Row, E, RA = never, R = never>(
  tag: T,
  options:
    | {
        readonly Request: Schema.Schema<I, II, RI>
        readonly RequestGroupKey: (request: Types.NoInfer<II>) => K
        readonly Result: Schema.Schema<A, IA, never>
        readonly ResultGroupKey: (result: Types.NoInfer<A>, row: Types.NoInfer<Row>) => K
        readonly execute: (requests: Types.NoInfer<II>[]) => Effect.Effect<readonly Row[], E, never>
        readonly withContext?: false | undefined
      }
    | {
        readonly Request: Schema.Schema<I, II, RI>
        readonly RequestGroupKey: (request: Types.NoInfer<II>) => K
        readonly Result: Schema.Schema<A, IA, RA>
        readonly ResultGroupKey: (result: Types.NoInfer<A>, row: Types.NoInfer<Row>) => K
        readonly execute: (requests: Types.NoInfer<II>[]) => Effect.Effect<readonly Row[], E, R>
        readonly withContext: true
      }
) => Effect.Effect<SqlResolver<T, I, A[], E, RI>, never, RA | R>
```
