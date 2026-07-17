Package: `@effect/sql-sqlite-wasm`<br />
Module: `OpfsWorker`<br />

## OpfsWorker.OpfsWorkerConfig

Configuration for the SQLite OPFS worker, including the message port used for the client protocol and the OPFS database name to open.

**Signature**

```ts
export interface OpfsWorkerConfig {
  readonly port: EventTarget & Pick<MessagePort, "postMessage" | "close">
  readonly dbName: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/sqlite-wasm/src/OpfsWorker.ts#L31)

Since v4.0.0