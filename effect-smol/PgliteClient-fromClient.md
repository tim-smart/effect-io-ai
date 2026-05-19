Package: `@effect/sql-pglite`<br />
Module: `PgliteClient`<br />

## PgliteClient.fromClient

Builds a `PgliteClient` around an existing PGlite instance, adding SQL client operations, LISTEN/NOTIFY, dump helpers, and serialized access.

**Signature**

```ts
declare const fromClient: (options: PgliteClientConfig.Base & { readonly liveClient: PGliteInterface; }) => Effect.Effect<PgliteClient, SqlError, Scope.Scope | Reactivity.Reactivity>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/sql/pglite/src/PgliteClient.ts#L187)

Since v4.0.0