# async

Creates an `Effect` from a callback-based asynchronous API.

Useful for integrating Node.js-style callback functions into the Effect system.

The `resume` function **MUST** be called at most once.

The `resume` function can optionally return an `Effect`, which will be
executed if the `Fiber` executing this `Effect` is interrupted.

The `resume` function can also receive an `AbortSignal` if required for
interruption.

The `FiberId` of the fiber that may complete the async callback may also be
specified. This is called the "blocking fiber" because it suspends the fiber
executing the `async` effect (i.e. semantically blocks the fiber from making
progress). Specifying this fiber id in cases where it is known will improve
diagnostics, but not affect the behavior of the returned effect.

To import and use `async` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.async
```

**Example**

```ts
import { Effect } from "effect"
import * as fs from "fs"

// Wrapping a callback-based API using Effect.async
const readFile = (filename: string) =>
  Effect.async<Buffer, Error>((resume) => {
    fs.readFile(filename, (error, data) => {
      if (error) {
        resume(Effect.fail(error))
      } else {
        resume(Effect.succeed(data))
      }
    })
  })

const program = readFile("todos.txt")
```

**Signature**

```ts
export declare const async: <A, E = never, R = never>(
  resume: (callback: (_: Effect<A, E, R>) => void, signal: AbortSignal) => void | Effect<void, never, R>,
  blockingOn?: FiberId.FiberId
) => Effect<A, E, R>
```
