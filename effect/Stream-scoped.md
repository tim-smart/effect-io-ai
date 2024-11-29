# scoped

Creates a single-valued stream from a scoped resource.

To import and use `scoped` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.scoped
undefined

**Example**

```ts
import { Console, Effect, Stream } from "effect"

// Creating a single-valued stream from a scoped resource
const stream = Stream.scoped(
  Effect.acquireUseRelease(
    Console.log("acquire"),
    () => Console.log("use"),
    () => Console.log("release")
  )
)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// acquire
// use
// release
// { _id: 'Chunk', values: [ undefined ] }
```

**Signature**

```ts
export declare const scoped: <A, E, R>(effect: Effect.Effect<A, E, R>) => Stream<A, E, Exclude<R, Scope.Scope>>
```
