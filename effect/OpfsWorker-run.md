Package: `@effect/sql-sqlite-wasm`<br />
Module: `OpfsWorker`<br />

## OpfsWorker.run

Runs the SQLite OPFS worker loop, opening the configured database, posting a ready message, handling query/import/export/update-hook messages, and closing when a close message is received.

**Signature**

```ts
declare const run: (options: OpfsWorkerConfig) => Effect.Effect<void, SqlError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/sqlite-wasm/src/OpfsWorker.ts#L42)

Since v4.0.0