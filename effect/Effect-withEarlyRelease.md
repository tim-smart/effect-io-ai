Package: `effect`<br />
Module: `Effect`<br />

## Effect.withEarlyRelease

Returns the result of the effect and a finalizer to close its scope.

**Details**

This function allows you to retrieve both the result of an effect and a
finalizer that can be used to manually close its scope. This is useful for
workflows where you need early access to the result while retaining control
over the resource cleanup process.

**Example**

```ts
import { Console, Effect } from "effect"

const acquire = Console.log("Acquiring resource").pipe(
  Effect.as(1),
  Effect.tap(Effect.addFinalizer(() => Console.log("Releasing resource")))
)
const program = Effect.gen(function*() {
  const [finalizer, resource] = yield* Effect.withEarlyRelease(acquire)
  console.log(`Using resource: ${resource}`)
  yield* Effect.sleep("1 second")
  yield* finalizer
})

Effect.runFork(program.pipe(Effect.scoped))
// Output:
// Acquiring resource
// Using resource: 1
// Releasing resource
```

**Signature**

```ts
declare const withEarlyRelease: <A, E, R>(self: Effect<A, E, R>) => Effect<[finalizer: Effect<void>, result: A], E, R | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6108)

Since v2.0.0