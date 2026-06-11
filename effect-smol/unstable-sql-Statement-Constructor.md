Package: `effect`<br />
Module: `Statement`<br />

## Statement.Constructor

SQL tagged-template constructor and helper API for building parameterized
statements, escaped identifiers, fragments, record helpers, and
dialect-specific branches. Raw helpers such as `unsafe` and `literal` insert
SQL text directly.

**Signature**

```ts
export interface Constructor {
  <A extends object = Row>(
    strings: TemplateStringsArray,
    ...args: Array<any>
  ): Statement<A>

  (value: string): Identifier

  /**
   * Create unsafe SQL query
   */
  readonly unsafe: <A extends object>(
    sql: string,
    params?: ReadonlyArray<unknown> | undefined
  ) => Statement<A>

  readonly literal: (sql: string) => Fragment

  readonly in: {
    (value: ReadonlyArray<unknown>): ArrayHelper
    (column: string, value: ReadonlyArray<unknown>): Fragment
  }

  readonly insert: {
    (
      value: ReadonlyArray<Record<string, unknown>>
    ): RecordInsertHelper
    (value: Record<string, unknown>): RecordInsertHelper
  }

  /** Update a single row */
  readonly update: <A extends Record<string, unknown>>(
    value: A,
    omit?: ReadonlyArray<keyof A>
  ) => RecordUpdateHelperSingle

  /**
   * Update multiple rows.
   *
   * **Gotchas**
   *
   * Not supported in sqlite.
   */
  readonly updateValues: (
    value: ReadonlyArray<Record<string, unknown>>,
    alias: string
  ) => RecordUpdateHelper

  /**
   * Create an `AND` chain for a where clause
   */
  readonly and: (clauses: ReadonlyArray<string | Fragment>) => Fragment

  /**
   * Create an `OR` chain for a where clause
   */
  readonly or: (clauses: ReadonlyArray<string | Fragment>) => Fragment

  /**
   * Create comma seperated values, with an optional prefix.
   *
   * **When to use**
   *
   * Use when `ORDER BY` and `GROUP BY` clauses.
   */
  readonly csv: {
    (values: ReadonlyArray<string | Fragment>): Fragment
    (prefix: string, values: ReadonlyArray<string | Fragment>): Fragment
  }

  readonly join: (
    literal: string,
    addParens?: boolean,
    fallback?: string
  ) => (clauses: ReadonlyArray<string | Fragment>) => Fragment

  readonly onDialect: <A, B, C, D, E>(options: {
    readonly sqlite: () => A
    readonly pg: () => B
    readonly mysql: () => C
    readonly mssql: () => D
    readonly clickhouse: () => E
  }) => A | B | C | D | E

  readonly onDialectOrElse: <A, B = never, C = never, D = never, E = never, F = never>(options: {
    readonly orElse: () => A
    readonly sqlite?: () => B
    readonly pg?: () => C
    readonly mysql?: () => D
    readonly mssql?: () => E
    readonly clickhouse?: () => F
  }) => A | B | C | D | E | F
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L429)

Since v4.0.0