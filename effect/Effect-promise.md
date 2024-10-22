# promise

Creates an `Effect` that represents an asynchronous computation guaranteed to succeed.

The provided function (`thunk`) returns a `Promise` that should never reject.
If the `Promise` does reject, the rejection is treated as a defect.

An optional `AbortSignal` can be provided to allow for interruption of the
wrapped `Promise` API.

To import and use `promise` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.promise
```

**Example**

```ts
import { Effect } from "effect"

// Creating an effect that resolves after a delay
const delay = (message: string) =>
  Effect.promise(
    () =>
      new Promise((resolve) => {
        setTimeout(() => resolve(message), 2000)
      })
  )

const program = delay("Async operation completed successfully!")
```

**Signature**

```ts
export declare const promise: <A>(evaluate: (signal: AbortSignal) => PromiseLike<A>) => Effect<A>
```
