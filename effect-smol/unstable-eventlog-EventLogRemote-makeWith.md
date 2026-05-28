Package: `effect`<br />
Module: `EventLogRemote`<br />

## EventLogRemote.makeWith

Creates an `EventLogRemote` from custom write encoding and change decoding
functions.

**Details**

The remote performs the hello/authentication handshake, retries after forbidden
responses by re-authenticating, chunks large writes, and registers itself with
the `Registry` for the current scope.

**Signature**

```ts
declare const makeWith: (args_0: { readonly encodeWrite: (options: { readonly identity: Identity["Service"]; readonly entries: ReadonlyArray<Entry>; readonly storeId: StoreId; }) => Effect.Effect<Uint8Array<ArrayBuffer>, Schema.SchemaError>; readonly decodeChanges: (identity: Identity["Service"], data: Uint8Array<ArrayBuffer>) => Effect.Effect<ReadonlyArray<RemoteEntry>, Schema.SchemaError>; }) => Effect.Effect<{ readonly id: RemoteId; readonly changes: (options: { readonly identity: Identity["Service"]; readonly storeId: StoreId; readonly startSequence: number; }) => Effect.Effect<Queue.Dequeue<RemoteEntry, EventLogRemoteError>, never, Scope.Scope>; readonly write: (options: { readonly identity: Identity["Service"]; readonly storeId: StoreId; readonly entries: ReadonlyArray<Entry>; }) => Effect.Effect<void, EventLogRemoteError>; readonly whenAuthenticated: <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E | EventLogRemoteError, R | Identity>; }, EventLogRemoteError, Scope.Scope | Registry | EventLogRemoteClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogRemote.ts#L162)

Since v4.0.0