Package: `effect`<br />
Module: `EventLogServerUnencrypted`<br />

## EventLogServerUnencrypted.makeStorageMemory

Creates an in-memory unencrypted server `Storage`.

**Details**

The implementation keeps per-store journals and session authentication bindings
in memory, publishes live changes, and serializes transactions with a
semaphore.

**Signature**

```ts
declare const makeStorageMemory: Effect.Effect<{ readonly getId: Effect.Effect<RemoteId>; readonly getOrCreateSessionAuthBinding: (publicKey: string, signingPublicKey: Uint8Array<ArrayBuffer>) => Effect.Effect<Uint8Array<ArrayBuffer>>; readonly entriesAfter: (storeId: StoreId, entry: Entry) => Effect.Effect<Array<Entry>>; readonly write: (storeId: StoreId, entries: ReadonlyArray<Entry>) => Effect.Effect<ReadonlyArray<RemoteEntry>>; readonly changes: (options: { readonly storeId: StoreId; readonly startSequence: number; readonly compactors: ReadonlyMap<string, RegisteredCompactor>; }) => Stream.Stream<RemoteEntry>; readonly withTransaction: <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; }, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServerUnencrypted.ts#L562)

Since v4.0.0