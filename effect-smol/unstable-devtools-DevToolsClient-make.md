Package: `effect`<br />
Module: `DevToolsClient`<br />

## DevToolsClient.make

Creates a devtools client over the current `Socket`, speaking the devtools
NDJSON protocol, sending periodic pings, and responding to metrics snapshot
requests.

**When to use**

Use when you already have a `Socket` and need the low-level `DevToolsClient`
service to exchange devtools telemetry directly.

**Details**

The effect requires `Scope` because it starts background fibers for the socket
stream and heartbeat.

**Gotchas**

`make` creates only the client service; tracing is installed separately.

**See**

- `layer` for providing the client as a layer
- `makeTracer` for creating a tracer after a `DevToolsClient` is available
- `layerTracer` for creating the client from the current `Socket` and installing the tracer as a layer

**Signature**

```ts
declare const make: Effect.Effect<{ readonly sendUnsafe: (_: DevToolsSchema.Span | DevToolsSchema.SpanEvent) => void; }, never, Scope.Scope | Socket.Socket>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DevToolsClient.ts#L165)

Since v4.0.0