Package: `effect`<br />
Module: `Stream`<br />

## Stream.acquireRelease

Creates a stream from a single value that will get cleaned up after the
stream is consumed.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

// Simulating File operations
const open = (filename: string) =>
  Effect.gen(function*() {
    yield* Console.log(`Opening ${filename}`)
    return {
      getLines: Effect.succeed(["Line 1", "Line 2", "Line 3"]),
      close: Console.log(`Closing ${filename}`)
    }
  })

const stream = Stream.acquireRelease(
  open("file.txt"),
  (file) => file.close
).pipe(Stream.flatMap((file) => file.getLines))

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// Opening file.txt
// Closing file.txt
// { _id: 'Chunk', values: [ [ 'Line 1', 'Line 2', 'Line 3' ] ] }
```

**Signature**

```ts
declare const acquireRelease: <A, E, R, R2, X>(acquire: Effect.Effect<A, E, R>, release: (resource: A, exit: Exit.Exit<unknown, unknown>) => Effect.Effect<X, never, R2>) => Stream<A, E, R | R2>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L223)

Since v2.0.0