Package: `effect`<br />
Module: `Latch`<br />

## Latch.isOpen

Checks whether the latch is currently open or closed.

**When to use**

Use to check the state of the latch without suspending or changing its state.

**Signature**

```ts
declare const isOpen: (self: Latch) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Latch.ts#L394)

Since v4.0.0