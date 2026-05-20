Package: `effect`<br />
Module: `Entity`<br />

## Entity.keepAlive

Enables or disables keep-alive for the current entity.

**Details**

When enabled it sends the internal keep-alive RPC for the current address; when
disabled it releases the keep-alive latch if one is present.

**Signature**

```ts
declare const keepAlive: (enabled: boolean) => Effect.Effect<void, never, Sharding | CurrentAddress>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Entity.ts#L702)

Since v4.0.0