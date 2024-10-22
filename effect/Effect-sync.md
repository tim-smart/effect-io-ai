# sync

Creates an `Effect` that represents a synchronous side-effectful computation.

The provided function (`thunk`) should not throw errors; if it does, the error is treated as a defect.
Use `Effect.sync` when you are certain the operation will not fail.

To import and use `sync` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.sync
```

**Example**

```ts
import { Effect } from "effect"

// Creating an effect that logs a message
const log = (message: string) =>
  Effect.sync(() => {
    console.log(message) // side effect
  })

const program = log("Hello, World!")
```

**Signature**

```ts
export declare const sync: <A>(thunk: LazyArg<A>) => Effect<A>
```
