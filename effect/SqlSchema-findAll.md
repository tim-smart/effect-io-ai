# findAll

Run a sql query with a request schema and a result schema.

To import and use `findAll` from the "SqlSchema" module:

```ts
import * as SqlSchema from "@effect/sql/SqlSchema"
// Can be accessed like this
SqlSchema.findAll
```

**Signature**

```ts
export declare const findAll: <IR, II, IA, AR, AI, A, R, E>(options: {
  readonly Request: Schema.Schema<IA, II, IR>
  readonly Result: Schema.Schema<A, AI, AR>
  readonly execute: (request: II) => Effect.Effect<ReadonlyArray<unknown>, E, R>
}) => (request: IA) => Effect.Effect<ReadonlyArray<A>, E | ParseError, R | IR | AR>
```
