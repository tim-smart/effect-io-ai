Package: `effect`<br />
Module: `Latch`<br />

## Latch.release

Releases the fibers currently waiting on a closed latch without opening it.

**Details**

The returned effect succeeds with `true` when release was requested while
the latch was closed, or `false` if the latch was already open. Future
waiters still suspend until the latch is opened or released again.

**Signature**

```ts
declare const release: (self: Latch) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Latch.ts#L200)

Since v4.0.0