Package: `effect`<br />
Module: `TxSemaphore`<br />

## TxSemaphore.isTxSemaphore

Determines if the provided value is a TxSemaphore.

**Example**

```ts
import { Effect, TxSemaphore } from "effect"

const program = Effect.gen(function*() {
  const semaphore = yield* TxSemaphore.make(5)
  const notSemaphore = { some: "object" }

  console.log(TxSemaphore.isTxSemaphore(semaphore)) // true
  console.log(TxSemaphore.isTxSemaphore(notSemaphore)) // false

  // Useful for runtime type checking in generic functions
  if (TxSemaphore.isTxSemaphore(semaphore)) {
    const available = yield* TxSemaphore.available(semaphore)
    console.log(`Available permits: ${available}`)
  }
})
```

**Signature**

```ts
declare const isTxSemaphore: (u: unknown) => u is TxSemaphore
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSemaphore.ts#L588)

Since v4.0.0