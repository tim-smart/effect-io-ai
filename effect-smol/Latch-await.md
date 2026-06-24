Package: `effect`<br />
Module: `Latch`<br />

## Latch.await

Waits for the latch to be opened.

**When to use**

Use to suspend the current fiber until the latch is opened or the current
set of waiters is released.

**Details**

Awaiting an already open latch completes immediately. Awaiting a closed
latch suspends until `open` or `release` resumes the waiters.

**Gotchas**

`release` can resume current waiters without opening the latch, so later
waiters may still suspend.

**See**

- `open` for opening the latch for current and future waiters
- `release` for resuming current waiters without opening the latch
- `whenOpen` for waiting before running another effect

**Signature**

```ts
declare const await: (self: Latch) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Latch.ts#L302)

Since v4.0.0