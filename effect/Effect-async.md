Package: `effect`<br />
Module: `Effect`<br />

## Effect.async

Creates an `Effect` from a callback-based asynchronous function.

**Details**

The `resume` function:
- Must be called exactly once. Any additional calls will be ignored.
- Can return an optional `Effect` that will be run if the `Fiber` executing
  this `Effect` is interrupted. This can be useful in scenarios where you
  need to handle resource cleanup if the operation is interrupted.
- Can receive an `AbortSignal` to handle interruption if needed.

The `FiberId` of the fiber that may complete the async callback may also be
specified using the `blockingOn` argument. This is called the "blocking
fiber" because it suspends the fiber executing the `async` effect (i.e.
semantically blocks the fiber from making progress). Specifying this fiber id
in cases where it is known will improve diagnostics, but not affect the
behavior of the returned effect.

**When to Use**

Use `Effect.async` when dealing with APIs that use callback-style instead of
`async/await` or `Promise`.

**Example** (Wrapping a Callback API)

```ts
import { Effect } from "effect"
import * as NodeFS from "node:fs"

const readFile = (filename: string) =>
  Effect.async<Buffer, Error>((resume) => {
    NodeFS.readFile(filename, (error, data) => {
      if (error) {
        // Resume with a failed Effect if an error occurs
        resume(Effect.fail(error))
      } else {
        // Resume with a succeeded Effect if successful
        resume(Effect.succeed(data))
      }
    })
  })

//      ┌─── Effect<Buffer, Error, never>
//      ▼
const program = readFile("example.txt")
```

**Example** (Handling Interruption with Cleanup)

```ts
import { Effect, Fiber } from "effect"
import * as NodeFS from "node:fs"

// Simulates a long-running operation to write to a file
const writeFileWithCleanup = (filename: string, data: string) =>
  Effect.async<void, Error>((resume) => {
    const writeStream = NodeFS.createWriteStream(filename)

    // Start writing data to the file
    writeStream.write(data)

    // When the stream is finished, resume with success
    writeStream.on("finish", () => resume(Effect.void))

    // In case of an error during writing, resume with failure
    writeStream.on("error", (err) => resume(Effect.fail(err)))

    // Handle interruption by returning a cleanup effect
    return Effect.sync(() => {
      console.log(`Cleaning up ${filename}`)
      NodeFS.unlinkSync(filename)
    })
  })

const program = Effect.gen(function* () {
  const fiber = yield* Effect.fork(
    writeFileWithCleanup("example.txt", "Some long data...")
  )
  // Simulate interrupting the fiber after 1 second
  yield* Effect.sleep("1 second")
  yield* Fiber.interrupt(fiber) // This will trigger the cleanup
})

// Run the program
Effect.runPromise(program)
// Output:
// Cleaning up example.txt
```

**Example** (Handling Interruption with AbortSignal)

```ts
import { Effect, Fiber } from "effect"

// A task that supports interruption using AbortSignal
const interruptibleTask = Effect.async<void, Error>((resume, signal) => {
  // Handle interruption
  signal.addEventListener("abort", () => {
    console.log("Abort signal received")
    clearTimeout(timeoutId)
  })

  // Simulate a long-running task
  const timeoutId = setTimeout(() => {
    console.log("Operation completed")
    resume(Effect.void)
  }, 2000)
})

const program = Effect.gen(function* () {
  const fiber = yield* Effect.fork(interruptibleTask)
  // Simulate interrupting the fiber after 1 second
  yield* Effect.sleep("1 second")
  yield* Fiber.interrupt(fiber)
})

// Run the program
Effect.runPromise(program)
// Output:
// Abort signal received
```

**Signature**

```ts
declare const async: <A, E = never, R = never>(resume: (callback: (_: Effect<A, E, R>) => void, signal: AbortSignal) => void | Effect<void, never, R>, blockingOn?: FiberId.FiberId) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L2477)

Since v2.0.0