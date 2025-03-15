Package: `effect`<br />
Module: `Effect`<br />

## Effect.acquireRelease

Creates a scoped resource using an `acquire` and `release` effect.

**Details**

This function helps manage resources by combining two `Effect` values: one
for acquiring the resource and one for releasing it.

`acquireRelease` does the following:

  1. Ensures that the effect that acquires the resource will not be
     interrupted. Note that acquisition may still fail due to internal
     reasons (such as an uncaught exception).
  2. Ensures that the `release` effect will not be interrupted, and will be
     executed as long as the acquisition effect successfully acquires the
     resource.

If the `acquire` function succeeds, the `release` function is added to the
list of finalizers for the scope. This ensures that the release will happen
automatically when the scope is closed.

Both `acquire` and `release` run uninterruptibly, meaning they cannot be
interrupted while they are executing.

Additionally, the `release` function can be influenced by the exit value when
the scope closes, allowing for custom handling of how the resource is
released based on the execution outcome.

**When to Use**

This function is used to ensure that an effect that represents the
acquisition of a resource (for example, opening a file, launching a thread,
etc.) will not be interrupted, and that the resource will always be released
when the `Effect` completes execution.

**Example** (Defining a Simple Resource)

```ts
import { Effect } from "effect"

// Define an interface for a resource
interface MyResource {
  readonly contents: string
  readonly close: () => Promise<void>
}

// Simulate resource acquisition
const getMyResource = (): Promise<MyResource> =>
  Promise.resolve({
    contents: "lorem ipsum",
    close: () =>
      new Promise((resolve) => {
        console.log("Resource released")
        resolve()
      })
  })

// Define how the resource is acquired
const acquire = Effect.tryPromise({
  try: () =>
    getMyResource().then((res) => {
      console.log("Resource acquired")
      return res
    }),
  catch: () => new Error("getMyResourceError")
})

// Define how the resource is released
const release = (res: MyResource) => Effect.promise(() => res.close())

// Create the resource management workflow
//
//      ┌─── Effect<MyResource, Error, Scope>
//      ▼
const resource = Effect.acquireRelease(acquire, release)
```

**See**

- `acquireUseRelease` for a version that automatically handles the scoping of resources.

**Signature**

```ts
declare const acquireRelease: { <A, X, R2>(release: (a: A, exit: Exit.Exit<unknown, unknown>) => Effect<X, never, R2>): <E, R>(acquire: Effect<A, E, R>) => Effect<A, E, Scope.Scope | R2 | R>; <A, E, R, X, R2>(acquire: Effect<A, E, R>, release: (a: A, exit: Exit.Exit<unknown, unknown>) => Effect<X, never, R2>): Effect<A, E, Scope.Scope | R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L5423)

Since v2.0.0