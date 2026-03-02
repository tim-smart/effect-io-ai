Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.make

Creates a new TxReentrantLock.

**Example**

```ts
import { Effect, TxReentrantLock } from "effect"

const program = Effect.gen(function*() {
  const lock = yield* TxReentrantLock.make()
  const isLocked = yield* TxReentrantLock.locked(lock)
  console.log(isLocked) // false
})
```

**Signature**

```ts
declare const make: () => Effect.Effect<TxReentrantLock, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxReentrantLock.ts#L101)

Since v4.0.0