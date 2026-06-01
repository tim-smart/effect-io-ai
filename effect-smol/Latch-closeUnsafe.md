Package: `effect`<br />
Module: `Latch`<br />

## Latch.closeUnsafe

Closes the latch synchronously so future `await` and `whenOpen` calls
suspend.

**When to use**

Use to close a latch synchronously when the state change must happen outside
an `Effect`.

**Details**

Returns `true` when this call changed the latch from open to closed, or
`false` if it was already closed. This unsafe variant performs the state
change immediately instead of returning an `Effect`.

**See**

- `close` for the effectful variant
- `openUnsafe` to synchronously open the latch and release waiting
fibers

**Signature**

```ts
declare const closeUnsafe: (self: Latch) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Latch.ts#L365)

Since v4.0.0