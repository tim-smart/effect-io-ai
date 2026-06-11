Package: `effect`<br />
Module: `SqlConnection`<br />

## SqlConnection.Connection

Low-level SQL driver connection capable of executing compiled SQL as
transformed rows, raw results, streams, value arrays, or unprepared
statements.

**Signature**

```ts
export interface Connection {
  readonly execute: (
    sql: string,
    params: ReadonlyArray<unknown>,
    transformRows: (<A extends object>(row: ReadonlyArray<A>) => ReadonlyArray<A>) | undefined
  ) => Effect<ReadonlyArray<any>, SqlError>

  /**
   * Execute the specified SQL query and return the raw results directly from
   * underlying SQL client.
   */
  readonly executeRaw: (
    sql: string,
    params: ReadonlyArray<unknown>
  ) => Effect<unknown, SqlError>

  readonly executeStream: (
    sql: string,
    params: ReadonlyArray<unknown>,
    transformRows: (<A extends object>(row: ReadonlyArray<A>) => ReadonlyArray<A>) | undefined
  ) => Stream<any, SqlError>

  readonly executeValues: (
    sql: string,
    params: ReadonlyArray<unknown>
  ) => Effect<ReadonlyArray<ReadonlyArray<unknown>>, SqlError>

  readonly executeUnprepared: (
    sql: string,
    params: ReadonlyArray<unknown>,
    transformRows: (<A extends object>(row: ReadonlyArray<A>) => ReadonlyArray<A>) | undefined
  ) => Effect<ReadonlyArray<any>, SqlError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlConnection.ts#L26)

Since v4.0.0