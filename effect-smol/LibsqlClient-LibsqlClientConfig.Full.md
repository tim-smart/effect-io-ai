Package: `@effect/sql-libsql`<br />
Module: `LibsqlClient`<br />

## LibsqlClient.LibsqlClientConfig.Full

Connection-based libSQL configuration used to create a managed client, including URL, credentials, sync, integer mode, TLS, and concurrency options.

**Signature**

```ts
export interface Full extends Base {
    /**
     * The database URL.
     *
     * **Details**
     *
     * The client supports `libsql:`, `http:`/`https:`, `ws:`/`wss:` and `file:` URL. For more infomation,
     * please refer to the project README:
     *
     * https://github.com/libsql/libsql-client-ts#supported-urls
     */
    readonly url: string | URL
    /** Authentication token for the database. */
    readonly authToken?: Redacted.Redacted | undefined
    /** Encryption key for the database. */
    readonly encryptionKey?: Redacted.Redacted | undefined
    /** URL of a remote server to synchronize database with. */
    readonly syncUrl?: string | URL | undefined
    /** Sync interval in seconds. */
    readonly syncInterval?: number | undefined
    /**
     * Enables or disables TLS for `libsql:` URLs.
     *
     * **Details**
     *
     * By default, `libsql:` URLs use TLS. You can set this option to `false` to disable TLS.
     */
    readonly tls?: boolean | undefined
    /**
     * How to convert SQLite integers to JavaScript values.
     *
     * **Details**
     *
     * - `"number"` (default): returns SQLite integers as JavaScript `number`-s (double precision floats).
     * `number` cannot precisely represent integers larger than 2^53-1 in absolute value, so attempting to read
     * larger integers will throw a `RangeError`.
     * - `"bigint"`: returns SQLite integers as JavaScript `bigint`-s (arbitrary precision integers). Bigints can
     * precisely represent all SQLite integers.
     * - `"string"`: returns SQLite integers as strings.
     */
    readonly intMode?: "number" | "bigint" | "string" | undefined
    /**
     * Concurrency limit.
     *
     * **Details**
     *
     * By default, the client performs up to 20 concurrent requests. You can set this option to a higher
     * number to increase the concurrency limit or set it to 0 to disable concurrency limits completely.
     */
    readonly concurrency?: number | undefined
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/libsql/src/LibsqlClient.ts#L113)

Since v4.0.0