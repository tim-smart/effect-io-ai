Package: `effect`<br />
Module: `Latch`<br />

## Latch.close

Closes the latch so future `await` and `whenOpen` calls suspend.

**When to use**

Use to re-enable waiting on a latch after it was opened, so later `await`
and `whenOpen` calls suspend again.

**Details**

The returned effect succeeds with `true` when this call changed the latch
from open to closed, or `false` if it was already closed.

**See**

- `closeUnsafe` for a synchronous variant
- `open` for opening the latch for current and future waiters

**Signature**

```ts
declare const close: (self: Latch) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Latch.ts#L315)

Since v4.0.0