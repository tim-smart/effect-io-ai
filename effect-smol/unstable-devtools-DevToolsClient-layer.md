Package: `effect`<br />
Module: `DevToolsClient`<br />

## DevToolsClient.layer

Layer that provides `DevToolsClient` using the current `Socket`.

**When to use**

Use to provide the low-level `DevToolsClient` service over an existing
`Socket` for custom devtools integrations that send telemetry through the
client directly.

**Details**

It delegates to `make`, so it speaks the devtools NDJSON protocol over the
provided `Socket`, sends periodic pings, responds to metrics snapshot
requests, and finalizes its background fibers when the layer scope closes.

**Gotchas**

This layer only provides the client. It does not install the devtools tracer
by itself.

**See**

- `make` for constructing the client as a scoped effect instead of a layer
- `layerTracer` for a higher-level layer that creates the client and installs the devtools tracer

**Signature**

```ts
declare const layer: Layer.Layer<DevToolsClient, never, Socket.Socket>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DevToolsClient.ts#L178)

Since v4.0.0