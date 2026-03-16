Package: `effect`<br />
Module: `Latch`<br />

## Latch.release

Releases all fibers waiting on the latch, without opening it.

**Signature**

```ts
declare const release: (self: Latch) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Latch.ts#L136)

Since v4.0.0