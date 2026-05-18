Package: `@effect/sql-libsql`<br />
Module: `LibsqlClient`<br />

## LibsqlClient.LibsqlClientConfig.Live

Configuration that uses an existing libSQL client. The supplied `liveClient` is caller-owned and is not closed by the Effect client.

**Signature**

```ts
export interface Live extends Base {
    readonly liveClient: Libsql.Client
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/libsql/src/LibsqlClient.ts#L159)

Since v4.0.0