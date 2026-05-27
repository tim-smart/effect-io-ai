Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.makeReplayFromRemote

Builds the effect used to replay entries received from a remote event log.

**Details**

The returned handler decodes the entry and conflicts with the registered event
schema, runs the matching handler with the supplied identity and store id, logs
failures, and invalidates configured reactivity keys.

**Signature**

```ts
declare const makeReplayFromRemote: (options: { readonly handlers: ReadonlyMap<string, Handlers.Item<any>>; readonly storeId: StoreId; readonly identity: Identity["Service"]; readonly reactivity: Reactivity["Service"]; readonly reactivityKeys: Record<string, ReadonlyArray<string>>; readonly logAnnotations: { readonly service: string; readonly effect: string; }; }) => (args_0: { readonly entry: Entry; readonly conflicts: ReadonlyArray<Entry>; }) => Effect.Effect<void, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLog.ts#L719)

Since v4.0.0