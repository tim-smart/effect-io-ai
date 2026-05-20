Package: `effect`<br />
Module: `DevToolsSchema`<br />

## DevToolsSchema.Response.WithoutPong

Devtools response messages excluding heartbeat pongs.

**Details**

`DevToolsServer` sends `Pong` internally and accepts only these responses
from client handlers.

**Signature**

```ts
type WithoutPong = Exclude<Response, { readonly _tag: "Pong" }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DevToolsSchema.ts#L566)

Since v4.0.0