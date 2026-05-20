Package: `effect`<br />
Module: `EventLogServerUnencrypted`<br />

## EventLogServerUnencrypted.layerServer

Provides `EventLogServerUnencrypted` and an event-log `Registry` using the
configured unencrypted server `Storage`.

**Signature**

```ts
declare const layerServer: Layer.Layer<EventLogServerUnencrypted | EventLog.Registry, never, Storage>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServerUnencrypted.ts#L722)

Since v4.0.0