# single

Run a sql query with a request schema and a result schema and return the first result.

To import and use `single` from the "Schema" module:

```ts
import * as Schema from "@effect/sql/Schema"
// Can be accessed like this
Schema.single
```

**Signature**

```ts
export declare const single: <IR, II, IA, AR, AI, A, R, E>(options: {
  readonly Request: Schema.Schema<IA, II, IR>
  readonly Result: Schema.Schema<A, AI, AR>
  readonly execute: (request: II) => Effect.Effect<readonly unknown[], E, R>
}) => (request: IA) => Effect.Effect<A, ParseError | E | Cause.NoSuchElementException, IR | AR | R>
```
