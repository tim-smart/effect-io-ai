Package: `@effect/sql-d1`<br />
Module: `D1Client`<br />

## D1Client.D1Client

Cloudflare D1 SQL client service, extending `SqlClient` with its D1 configuration and no `updateValues` support.

**Signature**

```ts
export interface D1Client extends Client.SqlClient {
  readonly [TypeId]: TypeId
  readonly config: D1ClientConfig

  /** Not supported in d1 */
  readonly updateValues: never
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/d1/src/D1Client.ts#L56)

Since v4.0.0