# single

Run a sql query with a request schema and a result schema and return the first result.

To import and use `single` from the "SqlSchema" module:

```ts
import * as SqlSchema from "@effect/sql/SqlSchema"
// Can be accessed like this
SqlSchema.single
```

**Signature**

```ts
export declare const single: <IR, II, IA, AR, AI, A, R, E>(options: {
  readonly Request: Schema.Schema<IA, II, IR>
  readonly Result: Schema.Schema<A, AI, AR>
  readonly execute: (request: II) => Effect.Effect<ReadonlyArray<unknown>, E, R>
}) => (request: IA) => Effect.Effect<A, E | ParseError | Cause.NoSuchElementException, R | IR | AR>
```
