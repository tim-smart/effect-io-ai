Package: `effect`<br />
Module: `Effect`<br />

## Effect.acquireRelease

This function constructs a scoped resource from an `acquire` and `release`
`Effect` value.

If the `acquire` `Effect` value successfully completes execution, then the
`release` `Effect` value will be added to the finalizers associated with the
scope of this `Effect` value, and it is guaranteed to be run when the scope
is closed.

The `acquire` and `release` `Effect` values will be run uninterruptibly.
Additionally, the `release` `Effect` value may depend on the `Exit` value
specified when the scope is closed.

**Example**

```ts
import { Console, Effect, Exit } from "effect"

// Simulate a resource that needs cleanup
interface FileHandle {
  readonly path: string
  readonly content: string
}

// Acquire a file handle
const acquire = Effect.gen(function*() {
  yield* Console.log("Opening file")
  return { path: "/tmp/file.txt", content: "file content" }
})

// Release the file handle
const release = (handle: FileHandle, exit: Exit.Exit<unknown, unknown>) =>
  Console.log(
    `Closing file ${handle.path} with exit: ${
      Exit.isSuccess(exit) ? "success" : "failure"
    }`
  )

// Create a scoped resource
const resource = Effect.acquireRelease(acquire, release)

// Use the resource within a scope
const program = Effect.scoped(
  Effect.gen(function*() {
    const handle = yield* resource
    yield* Console.log(`Using file: ${handle.path}`)
    return handle.content
  })
)
```

**Signature**

```ts
declare const acquireRelease: <A, E, R>(acquire: Effect<A, E, R>, release: (a: A, exit: Exit.Exit<unknown, unknown>) => Effect<unknown>) => Effect<A, E, R | Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6231)

Since v2.0.0