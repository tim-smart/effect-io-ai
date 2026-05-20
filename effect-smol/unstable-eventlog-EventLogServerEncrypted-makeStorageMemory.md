Package: `effect`<br />
Module: `EventLogServerEncrypted`<br />

## EventLogServerEncrypted.makeStorageMemory

Creates an in-memory encrypted server `Storage`.

**Details**

Data, session authentication bindings, and streams are process-local and are
released with the surrounding scope.

**Signature**

```ts
declare const makeStorageMemory: Effect.Effect<{ readonly getId: Effect.Effect<RemoteId>; readonly getOrCreateSessionAuthBinding: (publicKey: string, signingPublicKey: Uint8Array<ArrayBuffer>) => Effect.Effect<Uint8Array<ArrayBuffer>>; readonly write: (publicKey: string, storeId: StoreId, entries: ReadonlyArray<PersistedEntry>) => Effect.Effect<ReadonlyArray<EncryptedRemoteEntry>>; readonly changes: (publicKey: string, storeId: StoreId, startSequence: number) => Stream.Stream<EncryptedRemoteEntry>; }, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServerEncrypted.ts#L175)

Since v4.0.0