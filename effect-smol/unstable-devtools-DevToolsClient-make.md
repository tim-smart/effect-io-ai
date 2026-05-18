Package: `effect`<br />
Module: `DevToolsClient`<br />

## DevToolsClient.make

Creates a devtools client over the current `Socket`, speaking the devtools
NDJSON protocol, sending periodic pings, and responding to metrics snapshot
requests.

**Signature**

```ts
declare const make: Effect.Effect<{ readonly sendUnsafe: (_: DevToolsSchema.Span | DevToolsSchema.SpanEvent) => void; }, never, Scope.Scope | Socket.Socket>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DevToolsClient.ts#L128)

Since v4.0.0