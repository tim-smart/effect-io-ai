Package: `@effect/sql-mssql`<br />
Module: `MssqlClient`<br />

## MssqlClient.MssqlClientConfig

Configuration for a Microsoft SQL Server client, including connection, authentication, pool, parameter type, span attribute, and query/result name transform options.

**Signature**

```ts
export interface MssqlClientConfig {
  readonly domain?: string | undefined
  readonly server: string
  readonly instanceName?: string | undefined
  readonly encrypt?: boolean | undefined
  readonly trustServer?: boolean | undefined
  readonly port?: number | undefined
  readonly authType?: string | undefined
  readonly database?: string | undefined
  readonly username?: string | undefined
  readonly password?: Redacted.Redacted | undefined
  readonly connectTimeout?: Duration.Input | undefined

  readonly minConnections?: number | undefined
  readonly maxConnections?: number | undefined
  readonly connectionTTL?: Duration.Input | undefined

  readonly parameterTypes?: Record<Statement.PrimitiveKind, DataType> | undefined

  readonly spanAttributes?: Record<string, unknown> | undefined

  readonly transformResultNames?: ((str: string) => string) | undefined
  readonly transformQueryNames?: ((str: string) => string) | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/d1/src/MssqlClient.ts#L204)

Since v4.0.0