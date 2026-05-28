Package: `effect`<br />
Module: `SqlClient`<br />

## SqlClient.makeWithTransaction

Builds a transaction wrapper that begins top-level transactions, uses
savepoints for nested transactions, commits on success, and rolls back on
failure or interruption.

**Signature**

```ts
declare const makeWithTransaction: <I, S>(options: { readonly transactionService: Context.Key<I, readonly [conn: S, counter: number]>; readonly spanAttributes: ReadonlyArray<readonly [string, unknown]>; readonly acquireConnection: Effect.Effect<readonly [Scope.Closeable | undefined, S], SqlError>; readonly begin: (conn: NoInfer<S>) => Effect.Effect<void, SqlError>; readonly savepoint: (conn: NoInfer<S>, id: number) => Effect.Effect<void, SqlError>; readonly commit: (conn: NoInfer<S>) => Effect.Effect<void, SqlError>; readonly rollback: (conn: NoInfer<S>) => Effect.Effect<void, SqlError>; readonly rollbackSavepoint: (conn: NoInfer<S>, id: number) => Effect.Effect<void, SqlError>; }) => <R, E, A>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E | SqlError, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlClient.ts#L236)

Since v4.0.0