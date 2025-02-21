# acquireUseRelease

Creates a scoped resource and automatically handles the use effect during the
scope.

**Details**

This function is similar to {@link acquireRelease}, but it introduces an
additional `use` effect. This allows you to automatically execute the `use`
effect while the resource is acquired, and it also ensures that the `release`
effect is performed when the scope is closed.

The `acquire` effect is used to obtain the resource, the `use` effect
operates while the resource is in use, and the `release` effect cleans up the
resource when the scope ends.

To import and use `acquireUseRelease` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.acquireUseRelease
```

**Example**

```ts
// Title: Automatically Managing Resource Lifetime
import { Effect, Console } from "effect"

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

const use = (res: MyResource) => Console.log(`content is ${res.contents}`)

//      ┌─── Effect<void, Error, never>
//      ▼
const program = Effect.acquireUseRelease(acquire, use, release)

// Effect.runPromise(program)
// Output:
// Resource acquired
// content is lorem ipsum
// Resource released
```

**Signature**

```ts
export declare const acquireUseRelease: {
  <A2, E2, R2, A, X, R3>(
    use: (a: A) => Effect<A2, E2, R2>,
    release: (a: A, exit: Exit.Exit<A2, E2>) => Effect<X, never, R3>
  ): <E, R>(acquire: Effect<A, E, R>) => Effect<A2, E2 | E, R2 | R3 | R>
  <A, E, R, A2, E2, R2, X, R3>(
    acquire: Effect<A, E, R>,
    use: (a: A) => Effect<A2, E2, R2>,
    release: (a: A, exit: Exit.Exit<A2, E2>) => Effect<X, never, R3>
  ): Effect<A2, E | E2, R | R2 | R3>
}
```
