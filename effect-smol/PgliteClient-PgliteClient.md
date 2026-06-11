Package: `@effect/sql-pglite`<br />
Module: `PgliteClient`<br />

## PgliteClient.PgliteClient

PGlite-backed PostgreSQL client service, extending `SqlClient` with access to the PGlite instance, JSON fragments, LISTEN/NOTIFY, data directory dumps, and array type refresh.

**Signature**

```ts
export interface PgliteClient extends Client.SqlClient {
  readonly [TypeId]: TypeId
  readonly config: PgliteClientConfig
  readonly pglite: PGliteInterface
  readonly json: (_: unknown) => Fragment
  readonly listen: (channel: string) => Stream.Stream<string, SqlError>
  readonly notify: (channel: string, payload: string) => Effect.Effect<void, SqlError>
  readonly dumpDataDir: (compression?: "none" | "gzip" | "auto") => Effect.Effect<File | Blob, SqlError>
  readonly refreshArrayTypes: Effect.Effect<void, SqlError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/sql/pglite/src/PgliteClient.ts#L66)

Since v4.0.0