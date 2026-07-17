Package: `effect`<br />
Module: `EventLogMessage`<br />

## EventLogMessage.WriteEntries

Schema for encrypted event-log write payloads sent to a remote store.

**Details**

It includes the client public key, target store id, AES-GCM initialization
vector, and encrypted entries.

**Signature**

```ts
declare class WriteEntries
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EventLogMessage.ts#L263)

Since v4.0.0