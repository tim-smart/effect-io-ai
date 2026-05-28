Package: `effect`<br />
Module: `Effect`<br />

## Effect.acquireRelease

Constructs a scoped resource from an acquisition effect and a release
finalizer.

**When to use**

Use to acquire a scoped resource with an explicit release finalizer.

**Details**

If acquisition succeeds, the release finalizer is added to the current scope
and is guaranteed to run when that scope closes. The finalizer receives the
`Exit` value used to close the scope.

By default, acquisition is protected by an uninterruptible region. Pass
`{ interruptible: true }` to allow the acquisition effect to be interrupted.

**Example** (Acquiring and releasing a resource)

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

**See**

- `acquireDisposable` for resources that implement JavaScript disposal protocols
- `acquireUseRelease` for bracketing acquire, use, and release in one effect

**Signature**

```ts
declare const acquireRelease: <A, E, R, R2>(acquire: Effect<A, E, R>, release: (a: A, exit: Exit.Exit<unknown, unknown>) => Effect<unknown, never, R2>, options?: { readonly interruptible?: boolean; }) => Effect<A, E, R | R2 | Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6466)

Since v2.0.0