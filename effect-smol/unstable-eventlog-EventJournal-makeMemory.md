Package: `effect`<br />
Module: `EventJournal`<br />

## EventJournal.makeMemory

Creates an in-memory `EventJournal` service.

Entries, remote tracking state, and locks live only in the current process and
are lost when the service is discarded.

**Signature**

```ts
declare const makeMemory: Effect.Effect<{ readonly entries: Effect.Effect<ReadonlyArray<Entry>, EventJournalError>; readonly write: <A, E, R>(options: { readonly event: string; readonly primaryKey: string; readonly payload: Uint8Array; readonly effect: (entry: Entry) => Effect.Effect<A, E, R>; }) => Effect.Effect<A, EventJournalError | E, R>; readonly writeFromRemote: (options: { readonly remoteId: RemoteId; readonly entries: ReadonlyArray<RemoteEntry>; readonly compact?: ((uncommitted: ReadonlyArray<RemoteEntry>) => Effect.Effect<ReadonlyArray<Entry>, EventJournalError>) | undefined; readonly effect: (options: { readonly entry: Entry; readonly conflicts: ReadonlyArray<Entry>; }) => Effect.Effect<void, EventJournalError>; }) => Effect.Effect<{ readonly duplicateEntries: ReadonlyArray<Entry>; }, EventJournalError>; readonly withRemoteUncommited: <A, E, R>(remoteId: RemoteId, f: (entries: ReadonlyArray<Entry>) => Effect.Effect<A, E, R>) => Effect.Effect<A, EventJournalError | E, R>; readonly nextRemoteSequence: (remoteId: RemoteId) => Effect.Effect<number, EventJournalError>; readonly changes: Effect.Effect<PubSub.Subscription<Entry>, never, Scope>; readonly destroy: Effect.Effect<void, EventJournalError>; readonly withLock: (storeId: StoreId) => <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; }, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventJournal.ts#L343)

Since v4.0.0