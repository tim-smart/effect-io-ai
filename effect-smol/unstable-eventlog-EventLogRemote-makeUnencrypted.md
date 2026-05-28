Package: `effect`<br />
Module: `EventLogRemote`<br />

## EventLogRemote.makeUnencrypted

Creates an `EventLogRemote` that sends and receives plaintext entry payloads.

**Signature**

```ts
declare const makeUnencrypted: Effect.Effect<{ readonly id: RemoteId; readonly changes: (options: { readonly identity: Identity["Service"]; readonly storeId: StoreId; readonly startSequence: number; }) => Effect.Effect<Queue.Dequeue<RemoteEntry, EventLogRemoteError>, never, Scope.Scope>; readonly write: (options: { readonly identity: Identity["Service"]; readonly storeId: StoreId; readonly entries: ReadonlyArray<Entry>; }) => Effect.Effect<void, EventLogRemoteError>; readonly whenAuthenticated: <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E | EventLogRemoteError, R | Identity>; }, EventLogRemoteError, Scope.Scope | Registry | EventLogRemoteClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogRemote.ts#L345)

Since v4.0.0