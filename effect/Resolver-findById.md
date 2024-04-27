# findById

Create a resolver that resolves results by id.

To import and use `findById` from the "Resolver" module:

```ts
import * as Resolver from "@effect/sql/Resolver"
// Can be accessed like this
Resolver.findById
```

**Signature**

```ts
export declare const findById: <T extends string, I, II, RI, A, IA, Row, E, RA = never, R = never>(
  tag: T,
  options:
    | {
        readonly Id: Schema.Schema<I, II, RI>
        readonly Result: Schema.Schema<A, IA, never>
        readonly ResultId: (result: Types.NoInfer<A>, row: Types.NoInfer<Row>) => II
        readonly execute: (requests: Types.NoInfer<II>[]) => Effect.Effect<readonly Row[], E, never>
        readonly withContext?: false | undefined
      }
    | {
        readonly Id: Schema.Schema<I, II, RI>
        readonly Result: Schema.Schema<A, IA, RA>
        readonly ResultId: (result: Types.NoInfer<A>, row: Types.NoInfer<Row>) => II
        readonly execute: (requests: Types.NoInfer<II>[]) => Effect.Effect<readonly Row[], E, R>
        readonly withContext: true
      }
) => Effect.Effect<SqlResolver<T, I, Option.Option<A>, E, RI>, never, RA | R>
```
