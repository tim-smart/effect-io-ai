# Latch

A `Latch` is a synchronization primitive that allows you to control the
execution of fibers based on an open or closed state. It acts as a gate,
where fibers can wait for the latch to open before proceeding.

**Details**

A `Latch` can be in one of two states: open or closed. Fibers can:

- Wait for the latch to open using `await`.
- Proceed only when the latch is open using `whenOpen`.
- Open the latch to release all waiting fibers using `open`.
- Close the latch to block fibers using `close`.

Additionally, fibers can be released without changing the state of the latch
using `release`.

To import and use `Latch` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.Latch
```
