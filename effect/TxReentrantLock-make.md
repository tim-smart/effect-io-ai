Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.make

Creates a new TxReentrantLock.

**Example** (Creating a reentrant lock)

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
declare const make: () => Effect.Effect<TxReentrantLock>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TxReentrantLock.ts#L107)

Since v2.0.0