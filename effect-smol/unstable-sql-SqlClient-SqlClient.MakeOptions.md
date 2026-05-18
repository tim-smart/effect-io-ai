Package: `effect`<br />
Module: `SqlClient`<br />

## SqlClient.SqlClient.MakeOptions

Options used to construct a `SqlClient`, including connection acquirers,
the SQL compiler, transaction SQL, row transformation, tracing attributes,
and optional reactive query integration.

**Signature**

```ts
export interface MakeOptions {
    readonly acquirer: Connection.Acquirer
    readonly compiler: Compiler
    readonly transactionAcquirer?: Connection.Acquirer
    readonly spanAttributes: ReadonlyArray<readonly [string, unknown]>
    readonly transactionService?: Context.Service<TransactionConnection, TransactionConnection.Service>
    readonly beginTransaction?: string | undefined
    readonly rollback?: string | undefined
    readonly commit?: string | undefined
    readonly savepoint?: ((name: string) => string) | undefined
    readonly rollbackSavepoint?: ((name: string) => string) | undefined
    readonly transformRows?: (<A extends object>(row: ReadonlyArray<A>) => ReadonlyArray<A>) | undefined
    readonly reactiveQueue?: <A, E, R>(
      keys: ReadonlyArray<unknown> | ReadonlyRecord<string, ReadonlyArray<unknown>>,
      effect: Effect.Effect<A, E, R>
    ) => Effect.Effect<Queue.Dequeue<A, E>, never, R | Scope.Scope>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlClient.ts#L119)

Since v4.0.0