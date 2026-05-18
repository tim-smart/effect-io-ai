Package: `@effect/sql-d1`<br />
Module: `D1Client`<br />

## D1Client.D1ClientConfig

Configuration for a Cloudflare D1 client, including the `D1Database`, prepared statement cache settings, span attributes, and query/result name transforms.

**Signature**

```ts
export interface D1ClientConfig {
  readonly db: D1Database
  readonly prepareCacheSize?: number | undefined
  readonly prepareCacheTTL?: Duration.Input | undefined
  readonly spanAttributes?: Record<string, unknown> | undefined

  readonly transformResultNames?: ((str: string) => string) | undefined
  readonly transformQueryNames?: ((str: string) => string) | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/d1/src/D1Client.ts#L90)

Since v4.0.0