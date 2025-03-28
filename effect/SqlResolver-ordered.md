Package: `@effect/sql`<br />
Module: `SqlResolver`<br />

## SqlResolver.ordered

Create a resolver for a sql query with a request schema and a result schema.

The request schema is used to validate the input of the query.
The result schema is used to validate the output of the query.

Results are mapped to the requests in order, so the length of the results must match the length of the requests.

**Signature**

```ts
declare const ordered: <T extends string, I, II, RI, A, IA, _, E, RA = never, R = never>(tag: T, options: { readonly Request: Schema.Schema<I, II, RI>; readonly Result: Schema.Schema<A, IA>; readonly execute: (requests: Array<Types.NoInfer<II>>) => Effect.Effect<ReadonlyArray<_>, E>; readonly withContext?: false; } | { readonly Request: Schema.Schema<I, II, RI>; readonly Result: Schema.Schema<A, IA, RA>; readonly execute: (requests: Array<Types.NoInfer<II>>) => Effect.Effect<ReadonlyArray<_>, E, R>; readonly withContext: true; }) => Effect.Effect<SqlResolver<T, I, A, E | ResultLengthMismatch, RI>, never, RA | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/src/SqlResolver.ts#L196)

Since v1.0.0