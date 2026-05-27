Package: `@effect/sql-libsql`<br />
Module: `LibsqlClient`<br />

## LibsqlClient.LibsqlClientConfig.Base

Shared libSQL client options for span attributes and query/result name transformations.

**Signature**

```ts
export interface Base {
    readonly spanAttributes?: Record<string, unknown> | undefined
    readonly transformResultNames?: ((str: string) => string) | undefined
    readonly transformQueryNames?: ((str: string) => string) | undefined
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/libsql/src/LibsqlClient.ts#L118)

Since v4.0.0