Package: `effect`<br />
Module: `DevToolsSchema`<br />

## DevToolsSchema.Request

Type of devtools protocol requests accepted by the server.

Requests include heartbeat pings, spans, span events, and metric snapshots.

**Signature**

```ts
type Request = Schema.Schema.Type<typeof Request>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DevToolsSchema.ts#L479)

Since v4.0.0