Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.makeIdentity

Generates a new event-log identity using the configured
`EventLogEncryption` service.

**Signature**

```ts
declare const makeIdentity: Effect.Effect<{ readonly publicKey: string; readonly privateKey: Redacted.Redacted<Uint8Array<ArrayBuffer>>; }, never, EventLogEncryption.EventLogEncryption>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLog.ts#L483)

Since v4.0.0