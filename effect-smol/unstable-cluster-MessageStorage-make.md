Package: `effect`<br />
Module: `MessageStorage`<br />

## MessageStorage.make

Wraps a concrete message storage implementation with reply-handler management.

The returned service can register waiting reply handlers, notify them when
replies are saved, and fail them when a request or shard is unregistered.

**Signature**

```ts
declare const make: (storage: Omit<MessageStorage["Service"], "registerReplyHandler" | "unregisterReplyHandler" | "unregisterShardReplyHandlers">) => Effect.Effect<MessageStorage["Service"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MessageStorage.ts#L439)

Since v4.0.0