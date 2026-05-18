Package: `effect`<br />
Module: `EventLogServerUnencrypted`<br />

## EventLogServerUnencrypted.compactBacklog

Compacts a backlog of remote entries using the registered compactors.

Contiguous entries handled by the same compactor may be replaced with compacted
entries when the replacement count can be mapped back to increasing remote
sequence numbers; otherwise the original entries are kept.

**Signature**

```ts
declare const compactBacklog: (options: { readonly remoteEntries: ReadonlyArray<RemoteEntry>; readonly compactors: ReadonlyMap<string, RegisteredCompactor>; }) => Effect.Effect<ReadonlyArray<EventJournal.RemoteEntry>, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServerUnencrypted.ts#L465)

Since v4.0.0