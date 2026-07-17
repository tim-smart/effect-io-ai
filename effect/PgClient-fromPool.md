Package: `@effect/sql-pg`<br />
Module: `PgClient`<br />

## PgClient.fromPool

Builds a PostgreSQL client from a scoped `pg` pool acquisition effect, deriving transaction, streaming, and LISTEN/NOTIFY support from that pool.

**Signature**

```ts
declare const fromPool: (options: { readonly acquire: Effect.Effect<Pg.Pool, SqlError, Scope.Scope>; readonly applicationName?: string | undefined; readonly spanAttributes?: Record<string, unknown> | undefined; readonly transformResultNames?: ((str: string) => string) | undefined; readonly transformQueryNames?: ((str: string) => string) | undefined; readonly transformJson?: boolean | undefined; readonly types?: Pg.CustomTypesConfig | undefined; }) => Effect.Effect<PgClient, SqlError, Scope.Scope | Reactivity.Reactivity>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/pg/src/PgClient.ts#L274)

Since v4.0.0