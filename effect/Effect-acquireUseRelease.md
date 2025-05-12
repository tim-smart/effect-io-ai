Package: `effect`<br />
Module: `Effect`<br />

## Effect.acquireUseRelease

Many real-world operations involve working with resources that must be released when no longer needed, such as:

- Database connections
- File handles
- Network requests

This function ensures that a resource is:

1. **Acquired** properly.
2. **Used** for its intended purpose.
3. **Released** even if an error occurs.

**Example** (Automatically Managing Resource Lifetime)

```ts
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

Effect.runPromise(program)
// Output:
// Resource acquired
// content is lorem ipsum
// Resource released
```

**Signature**

```ts
declare const acquireUseRelease: { <A2, E2, R2, A, X, R3>(use: (a: A) => Effect<A2, E2, R2>, release: (a: A, exit: Exit.Exit<A2, E2>) => Effect<X, never, R3>): <E, R>(acquire: Effect<A, E, R>) => Effect<A2, E2 | E, R2 | R3 | R>; <A, E, R, A2, E2, R2, X, R3>(acquire: Effect<A, E, R>, use: (a: A) => Effect<A2, E2, R2>, release: (a: A, exit: Exit.Exit<A2, E2>) => Effect<X, never, R3>): Effect<A2, E | E2, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L5528)

Since v2.0.0