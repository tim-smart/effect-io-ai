Package: `@effect/sql-pglite`<br />
Module: `PgliteClient`<br />

## PgliteClient.make

Creates a scoped PGlite SQL client. When no live client is supplied it creates and closes a PGlite instance; when `liveClient` is supplied, the caller retains ownership.

**Signature**

```ts
declare const make: (options?: PgliteClientConfig) => Effect.Effect<PgliteClient, SqlError, Scope.Scope | Reactivity.Reactivity>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/sql/pglite/src/PgliteClient.ts#L159)

Since v4.0.0