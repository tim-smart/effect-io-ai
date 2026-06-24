Package: `effect`<br />
Module: `Latch`<br />

## Latch.openUnsafe

Opens the latch synchronously and releases fibers waiting on it.

**When to use**

Use when you need synchronous code to open a latch immediately and release
the fibers waiting on it.

**Details**

Returns `true` when this call changed the latch from closed to open, or
`false` if it was already open. This unsafe variant performs the state
change immediately instead of returning an `Effect`.

**See**

- `open` for the effectful variant
- `release` to release waiting fibers without opening the latch
- `closeUnsafe` for the synchronous inverse operation

**Signature**

```ts
declare const openUnsafe: (self: Latch) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Latch.ts#L251)

Since v4.0.0