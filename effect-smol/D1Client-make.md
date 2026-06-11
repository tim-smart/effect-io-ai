Package: `@effect/sql-d1`<br />
Module: `D1Client`<br />

## D1Client.make

Creates a scoped Cloudflare D1 SQL client. Prepared statements are cached, while transactions and streaming queries are not supported by this driver.

**Signature**

```ts
declare const make: (options: D1ClientConfig) => Effect.Effect<D1Client, never, Scope.Scope | Reactivity.Reactivity>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/d1/src/D1Client.ts#L99)

Since v4.0.0