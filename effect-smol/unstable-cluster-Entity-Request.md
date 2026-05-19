Package: `effect`<br />
Module: `Entity`<br />

## Entity.Request

Entity request envelope delivered to entity handlers.

It includes the underlying request envelope plus the last stream reply chunk
that was sent, allowing handlers to resume chunk sequencing after a restart.

**Signature**

```ts
declare class Request<Rpc>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Entity.ts#L537)

Since v4.0.0