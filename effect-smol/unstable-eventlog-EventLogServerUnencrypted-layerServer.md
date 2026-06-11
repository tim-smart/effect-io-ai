Package: `effect`<br />
Module: `EventLogServerUnencrypted`<br />

## EventLogServerUnencrypted.layerServer

Provides `EventLogServerUnencrypted` and an event-log `Registry` using the
configured unencrypted server `Storage`.

**When to use**

Use to provide the unencrypted event-log server service together with the
registry needed by event handlers.

**Signature**

```ts
declare const layerServer: Layer.Layer<EventLogServerUnencrypted | EventLog.Registry, never, Storage>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServerUnencrypted.ts#L766)

Since v4.0.0