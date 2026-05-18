Package: `effect`<br />
Module: `Latch`<br />

## Latch.close

Closes the latch so future `await` and `whenOpen` calls suspend.

The returned effect succeeds with `true` when this call changed the latch
from open to closed, or `false` if it was already closed.

**Signature**

```ts
declare const close: (self: Latch) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Latch.ts#L219)

Since v4.0.0