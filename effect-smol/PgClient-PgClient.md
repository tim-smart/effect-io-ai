Package: `@effect/sql-pg`<br />
Module: `PgClient`<br />

## PgClient.PgClient

PostgreSQL client service, extending `SqlClient` with JSON parameter fragments and LISTEN/NOTIFY helpers.

**Signature**

```ts
export interface PgClient extends Client.SqlClient {
  readonly [TypeId]: TypeId
  readonly config: PgClientConfig
  readonly json: (_: unknown) => Fragment
  readonly listen: (channel: string) => Stream.Stream<string, SqlError>
  readonly notify: (channel: string, payload: string) => Effect.Effect<void, SqlError>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/pg/src/PgClient.ts#L79)

Since v4.0.0