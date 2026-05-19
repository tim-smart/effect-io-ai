Package: `effect`<br />
Module: `Latch`<br />

## Latch.closeUnsafe

Synchronously closes the latch so future `await` and `whenOpen` calls
suspend.

Returns `true` when this call changed the latch from open to closed, or
`false` if it was already closed. This unsafe variant performs the state
change immediately instead of returning an `Effect`.

**Signature**

```ts
declare const closeUnsafe: (self: Latch) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Latch.ts#L220)

Since v4.0.0