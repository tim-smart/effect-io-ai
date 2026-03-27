Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.writeLocks

Returns the number of write locks held (0 or the reentrant count).

**Example**

```ts
import { Effect, TxReentrantLock } from "effect"

const program = Effect.gen(function*() {
  const lock = yield* TxReentrantLock.make()
  const count = yield* TxReentrantLock.writeLocks(lock)
  console.log(count) // 0
})
```

**Signature**

```ts
declare const writeLocks: (self: TxReentrantLock) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxReentrantLock.ts#L509)

Since v4.0.0