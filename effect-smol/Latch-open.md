Package: `effect`<br />
Module: `Latch`<br />

## Latch.open

Opens the latch and releases fibers waiting on it.

**When to use**

Use to open a latch and release all fibers that are waiting on it.

**Details**

The returned effect succeeds with `true` when this call changed the latch
from closed to open, or `false` if it was already open.

**See**

- `openUnsafe` for a synchronous variant
- `release` to release waiting fibers without opening the latch

**Signature**

```ts
declare const open: (self: Latch) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Latch.ts#L219)

Since v4.0.0