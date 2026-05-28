Package: `effect`<br />
Module: `Entity`<br />

## Entity.Request

Represents an entity request envelope delivered to entity handlers.

**Details**

It includes the underlying request envelope plus the last stream reply chunk
that was sent, allowing handlers to resume chunk sequencing after a restart.

**Signature**

```ts
declare class Request<Rpc>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Entity.ts#L580)

Since v4.0.0