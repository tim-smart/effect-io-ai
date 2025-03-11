## findById

Create a resolver that resolves results by id.

**Signature**

```ts
declare const findById: <T extends string, I, II, RI, A, IA, Row, E, RA = never, R = never>(tag: T, options: { readonly Id: Schema.Schema<I, II, RI>; readonly Result: Schema.Schema<A, IA>; readonly ResultId: (result: Types.NoInfer<A>, row: Types.NoInfer<Row>) => I; readonly execute: (requests: Array<Types.NoInfer<II>>) => Effect.Effect<ReadonlyArray<Row>, E>; readonly withContext?: false; } | { readonly Id: Schema.Schema<I, II, RI>; readonly Result: Schema.Schema<A, IA, RA>; readonly ResultId: (result: Types.NoInfer<A>, row: Types.NoInfer<Row>) => I; readonly execute: (requests: Array<Types.NoInfer<II>>) => Effect.Effect<ReadonlyArray<Row>, E, R>; readonly withContext: true; }) => Effect.Effect<SqlResolver<T, I, Option.Option<A>, E, RI>, never, RA | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/src/SqlResolver.ts#L345)

Since v1.0.0