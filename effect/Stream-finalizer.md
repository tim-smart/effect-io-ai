# finalizer

Creates a one-element stream that never fails and executes the finalizer
when it ends.

To import and use `finalizer` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.finalizer
undefined

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const application = Stream.fromEffect(Console.log("Application Logic."))

const deleteDir = (dir: string) => Console.log(`Deleting dir: ${dir}`)

const program = application.pipe(
  Stream.concat(
    Stream.finalizer(deleteDir("tmp").pipe(Effect.andThen(Console.log("Temporary directory was deleted."))))
  )
)

// Effect.runPromise(Stream.runCollect(program)).then(console.log)
// Application Logic.
// Deleting dir: tmp
// Temporary directory was deleted.
// { _id: 'Chunk', values: [ undefined, undefined ] }
```

**Signature**

```ts
export declare const finalizer: <R, X>(finalizer: Effect.Effect<X, never, R>) => Stream<void, never, R>
```
