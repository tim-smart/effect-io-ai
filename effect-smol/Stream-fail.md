Package: `effect`<br />
Module: `Stream`<br />

## Stream.fail

Terminates with the specified error.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.fail("Uh oh!")
  const exit = yield* Effect.exit(Stream.runCollect(stream))
  yield* Console.log(exit)
  // Output: { _id: 'Exit', _tag: 'Failure', cause: { _id: 'Cause', _tag: 'Fail', failure: 'Uh oh!' } }
})

Effect.runPromise(program)
```

**Signature**

```ts
declare const fail: <E>(error: E) => Stream<never, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L831)

Since v2.0.0