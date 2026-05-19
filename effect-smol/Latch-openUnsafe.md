Package: `effect`<br />
Module: `Latch`<br />

## Latch.openUnsafe

Synchronously opens the latch and releases fibers waiting on it.

Returns `true` when this call changed the latch from closed to open, or
`false` if it was already open. This unsafe variant performs the state
change immediately instead of returning an `Effect`.

**Signature**

```ts
declare const openUnsafe: (self: Latch) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Latch.ts#L172)

Since v4.0.0