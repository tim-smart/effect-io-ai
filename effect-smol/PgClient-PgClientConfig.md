Package: `@effect/sql-pg`<br />
Module: `PgClient`<br />

## PgClient.PgClientConfig

Configuration for a PostgreSQL client, including connection, TLS, custom stream, application name, type parser, JSON transform, and query/result name transform options.

**Signature**

```ts
export interface PgClientConfig {
  readonly url?: Redacted.Redacted | undefined

  readonly host?: string | undefined
  readonly port?: number | undefined
  readonly path?: string | undefined
  readonly ssl?: boolean | ConnectionOptions | undefined
  readonly database?: string | undefined
  readonly username?: string | undefined
  readonly password?: Redacted.Redacted | undefined

  readonly connectTimeout?: Duration.Input | undefined

  readonly stream?: (() => Duplex) | undefined

  readonly applicationName?: string | undefined
  readonly spanAttributes?: Record<string, unknown> | undefined

  readonly transformResultNames?: ((str: string) => string) | undefined
  readonly transformQueryNames?: ((str: string) => string) | undefined
  readonly transformJson?: boolean | undefined
  readonly types?: Pg.CustomTypesConfig | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/pg/src/PgClient.ts#L126)

Since v4.0.0