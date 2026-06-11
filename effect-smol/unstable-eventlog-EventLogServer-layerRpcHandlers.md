Package: `effect`<br />
Module: `EventLogServer`<br />

## EventLogServer.layerRpcHandlers

Creates the shared RPC handlers for the event-log remote protocol.

**Details**

The layer manages hello challenges, verifies session authentication, reassembles
chunked writes, delegates write and change handling to the supplied callbacks,
and frames large change payloads into chunks.

**Signature**

```ts
declare const layerRpcHandlers: (options: { readonly remoteId: RemoteId; readonly getOrCreateSessionAuthBinding: (publicKey: string, signingPublicKey: Uint8Array<ArrayBuffer>) => Effect.Effect<Uint8Array<ArrayBuffer>>; readonly onWrite: (data: Uint8Array<ArrayBuffer>) => Effect.Effect<void, EventLogProtocolError>; readonly changes: (options: { readonly publicKey: string; readonly storeId: StoreId; readonly startSequence: number; }) => Stream.Stream<Uint8Array<ArrayBuffer>, unknown>; }) => Layer.Layer<Rpc.ToHandler<RpcGroup.Rpcs<typeof EventLogRemoteRpcs>> | EventLogAuthentication>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServer.ts#L76)

Since v4.0.0