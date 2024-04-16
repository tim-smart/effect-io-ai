# findAll

Run a sql query with a request schema and a result schema.

To import and use `findAll` from the "Schema" module:

```ts
import * as Schema from "@effect/sql/Schema"
// Can be accessed like this
Schema.findAll
```

**Signature**

```ts
export declare const findAll: <IR, II, IA, AR, AI, A, R, E>(options: {
  readonly Request: Schema.Schema<IA, II, IR>
  readonly Result: Schema.Schema<A, AI, AR>
  readonly execute: (request: II) => Effect.Effect<readonly unknown[], E, R>
}) => (request: IA) => Effect.Effect<readonly A[], E | ParseError, IR | AR | R>
```
