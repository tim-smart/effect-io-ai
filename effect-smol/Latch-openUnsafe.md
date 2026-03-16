Package: `effect`<br />
Module: `Latch`<br />

## Latch.openUnsafe

Opens the latch, releasing all fibers waiting on it.

**Signature**

```ts
declare const openUnsafe: (self: Latch) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Latch.ts#L128)

Since v4.0.0