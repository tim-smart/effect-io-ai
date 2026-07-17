Package: `effect`<br />
Module: `EventLogServerUnencrypted`<br />

## EventLogServerUnencrypted.compactBacklog

Runs the registered compactors over a backlog of remote entries.

**When to use**

Use to reduce stored remote entries before replaying them to an unencrypted
event-log client.

**Details**

Contiguous entries handled by the same compactor may be replaced with compacted
entries when the replacement count can be mapped back to increasing remote
sequence numbers; otherwise the original entries are kept.

**Signature**

```ts
declare const compactBacklog: (options: { readonly remoteEntries: ReadonlyArray<RemoteEntry>; readonly compactors: ReadonlyMap<string, RegisteredCompactor>; }) => Effect.Effect<ReadonlyArray<EventJournal.RemoteEntry>, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EventLogServerUnencrypted.ts#L490)

Since v4.0.0