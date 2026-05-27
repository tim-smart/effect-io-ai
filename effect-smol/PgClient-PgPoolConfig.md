Package: `@effect/sql-pg`<br />
Module: `PgClient`<br />

## PgClient.PgPoolConfig

PostgreSQL pool configuration, extending `PgClientConfig` with idle timeout, pool size, and connection lifetime settings.

**Signature**

```ts
export interface PgPoolConfig extends PgClientConfig {
  readonly idleTimeout?: Duration.Input | undefined

  readonly maxConnections?: number | undefined
  readonly minConnections?: number | undefined
  readonly connectionTTL?: Duration.Input | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/pg/src/PgClient.ts#L156)

Since v4.0.0