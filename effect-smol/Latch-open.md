Package: `effect`<br />
Module: `Latch`<br />

## Latch.open

Opens the latch, releasing all fibers waiting on it.

**Signature**

```ts
declare const open: (self: Latch) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Latch.ts#L120)

Since v4.0.0