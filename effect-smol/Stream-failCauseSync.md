Package: `effect`<br />
Module: `Stream`<br />

## Stream.failCauseSync

The stream that always fails with the specified lazily evaluated `Cause`.

**Example**

```ts
import { Cause, Console, Effect, Stream } from "effect"

const stream = Stream.failCauseSync(() =>
  Cause.fail("Connection timeout after retries")
)

const program = Effect.gen(function*() {
  const exit = yield* Stream.runCollect(stream).pipe(Effect.exit)
  yield* Console.log(exit)
})

Effect.runPromise(program)
// Output:
// { _id: 'Exit', _tag: 'Failure', cause: { _id: 'Cause', _tag: 'Fail', failure: 'Connection timeout after retries' } }
```

**Signature**

```ts
declare const failCauseSync: <E>(evaluate: LazyArg<Cause.Cause<E>>) => Stream<never, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1011)

Since v2.0.0