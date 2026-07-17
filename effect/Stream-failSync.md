Package: `effect`<br />
Module: `Stream`<br />

## Stream.failSync

Terminates with the specified lazily evaluated error.

**Example** (Failing a stream lazily)

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.failSync(() => "Uh oh!")

const program = Effect.gen(function*() {
  const exit = yield* Stream.runCollect(stream).pipe(Effect.exit)
  yield* Console.log(exit)
})

Effect.runPromise(program)
// Output:
// { _id: 'Exit', _tag: 'Failure', cause: { _id: 'Cause', _tag: 'Fail', failure: 'Uh oh!' } }
```

**Signature**

```ts
declare const failSync: <E>(evaluate: LazyArg<E>) => Stream<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L951)

Since v2.0.0