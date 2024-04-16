# findOne

Run a sql query with a request schema and a result schema and return the first result.

To import and use `findOne` from the "Schema" module:

```ts
import * as Schema from "@effect/sql/Schema"
// Can be accessed like this
Schema.findOne
```

**Signature**

```ts
export declare const findOne: <IR, II, IA, AR, AI, A, R, E>(options: {
  readonly Request: Schema.Schema<IA, II, IR>
  readonly Result: Schema.Schema<A, AI, AR>
  readonly execute: (request: II) => Effect.Effect<readonly unknown[], E, R>
}) => (request: IA) => Effect.Effect<Option.Option<A>, ParseError | E, IR | AR | R>
```
