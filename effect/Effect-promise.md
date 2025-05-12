Package: `effect`<br />
Module: `Effect`<br />

## Effect.promise

Creates an `Effect` that represents an asynchronous computation guaranteed to
succeed.

**Details**

The provided function (`thunk`) returns a `Promise` that should never reject; if it does, the error
will be treated as a "defect".

This defect is not a standard error but indicates a flaw in the logic that
was expected to be error-free. You can think of it similar to an unexpected
crash in the program, which can be further managed or logged using tools like
`catchAllDefect`.

**Interruptions**

An optional `AbortSignal` can be provided to allow for interruption of the
wrapped `Promise` API.

**When to Use**

Use this function when you are sure the operation will not reject.

**Example** (Delayed Message)

```ts
import { Effect } from "effect"

const delay = (message: string) =>
  Effect.promise<string>(
    () =>
      new Promise((resolve) => {
        setTimeout(() => {
          resolve(message)
        }, 2000)
      })
  )

//      ┌─── Effect<string, never, never>
//      ▼
const program = delay("Async operation completed successfully!")
```

**See**

- `tryPromise` for a version that can handle failures.

**Signature**

```ts
declare const promise: <A>(evaluate: (signal: AbortSignal) => PromiseLike<A>) => Effect<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L3120)

Since v2.0.0