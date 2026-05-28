Package: `@effect/sql-mysql2`<br />
Module: `MysqlClient`<br />

## MysqlClient.MysqlClientConfig

Configuration for a mysql2 client, including connection URI or connection fields, pool options, span attributes, and query/result name transforms.

**Signature**

```ts
export interface MysqlClientConfig {
  /**
   * Connection URI. Setting this will override the other connection options
   */
  readonly url?: Redacted.Redacted | undefined

  readonly host?: string | undefined
  readonly port?: number | undefined
  readonly database?: string | undefined
  readonly username?: string | undefined
  readonly password?: Redacted.Redacted | undefined

  readonly maxConnections?: number | undefined
  readonly connectionTTL?: Duration.Input | undefined

  readonly poolConfig?: Mysql.PoolOptions | undefined

  readonly spanAttributes?: Record<string, unknown> | undefined

  readonly transformResultNames?: ((str: string) => string) | undefined
  readonly transformQueryNames?: ((str: string) => string) | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/mysql2/src/MysqlClient.ts#L204)

Since v4.0.0