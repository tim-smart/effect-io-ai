Package: `@effect/sql-pg`<br />
Module: `PgClient`<br />

## PgClient.fromClient

Builds a PostgreSQL client from a scoped `pg` client acquisition effect, serializing access when sharing the client and optionally using separate clients for streams and LISTEN.

**Signature**

```ts
declare const fromClient: (options: { readonly acquire: Effect.Effect<Pg.Client, SqlError, Scope.Scope>; readonly acquireForStream: boolean; readonly applicationName?: string | undefined; readonly spanAttributes?: Record<string, unknown> | undefined; readonly transformResultNames?: ((str: string) => string) | undefined; readonly transformQueryNames?: ((str: string) => string) | undefined; readonly transformJson?: boolean | undefined; readonly types?: Pg.CustomTypesConfig | undefined; }) => Effect.Effect<PgClient, SqlError, Scope.Scope | Reactivity.Reactivity>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/pg/src/PgClient.ts#L478)

Since v4.0.0