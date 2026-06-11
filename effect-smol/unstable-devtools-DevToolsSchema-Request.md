Package: `effect`<br />
Module: `DevToolsSchema`<br />

## DevToolsSchema.Request

Type of devtools protocol requests accepted by the server.

**Details**

Requests include heartbeat pings, spans, span events, and metric snapshots.

**Signature**

```ts
type Request = Schema.Schema.Type<typeof Request>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DevToolsSchema.ts#L496)

Since v4.0.0