Package: `effect`<br />
Module: `Stream`<br />

## Stream.changes

Emits only elements that differ from the previous one.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.fromIterable([1, 1, 2, 2, 3]).pipe(
    Stream.changes,
    Stream.runCollect
  )

  yield* Console.log(values)
})

Effect.runPromise(program)
// [1, 2, 3]
```

**Signature**

```ts
declare const changes: <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8493)

Since v2.0.0