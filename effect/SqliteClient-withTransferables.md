Package: `@effect/sql-sqlite-wasm`<br />
Module: `SqliteClient`<br />

## SqliteClient.withTransferables

Runs an effect with the supplied transferables attached to worker-backed SQLite WASM query messages.

**Signature**

```ts
declare const withTransferables: (transferables: ReadonlyArray<Transferable>) => <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/sqlite-wasm/src/SqliteClient.ts#L483)

Since v4.0.0