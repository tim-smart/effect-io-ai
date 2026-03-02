Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.TxReentrantLock

A TxReentrantLock provides a transactional read/write lock with reentrant semantics.
Multiple readers can hold the lock concurrently, or a single writer can hold exclusive
access. A fiber holding the write lock may acquire additional read/write locks (reentrancy).

**Example**

```ts
import { Effect, TxReentrantLock } from "effect"

const program = Effect.gen(function*() {
  const lock = yield* TxReentrantLock.make()

  // Multiple readers can proceed concurrently
  yield* TxReentrantLock.withReadLock(lock, Effect.succeed("reading"))

  // Writer gets exclusive access
  yield* TxReentrantLock.withWriteLock(lock, Effect.succeed("writing"))
})
```

**Signature**

```ts
export interface TxReentrantLock extends Inspectable, Pipeable {
  readonly [TypeId]: typeof TypeId
  /** @internal */
  readonly stateRef: TxRef.TxRef<LockState>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxReentrantLock.ts#L59)

Since v4.0.0