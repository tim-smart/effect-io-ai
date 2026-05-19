Package: `effect`<br />
Module: `Latch`<br />

## Latch.open

Opens the latch and releases fibers waiting on it.

The returned effect succeeds with `true` when this call changed the latch
from closed to open, or `false` if it was already open.

**Signature**

```ts
declare const open: (self: Latch) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Latch.ts#L160)

Since v4.0.0