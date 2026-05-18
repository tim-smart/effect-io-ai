Package: `effect`<br />
Module: `EventLogMessage`<br />

## EventLogMessage.WriteEntries

Msgpack-encodable payload for writing encrypted entries to a remote store.

It includes the client public key, target store id, AES-GCM initialization
vector, and encrypted entries.

**Signature**

```ts
declare class WriteEntries
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogMessage.ts#L261)

Since v4.0.0