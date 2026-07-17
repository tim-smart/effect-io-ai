Package: `effect`<br />
Module: `DevToolsSchema`<br />

## DevToolsSchema.Request.WithoutPing

Devtools request messages excluding heartbeat pings.

**Details**

`DevToolsServer` handles `Ping` internally and exposes only these requests
to client handlers.

**Signature**

```ts
type WithoutPing = Exclude<Request, { readonly _tag: "Ping" }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DevToolsSchema.ts#L514)

Since v4.0.0