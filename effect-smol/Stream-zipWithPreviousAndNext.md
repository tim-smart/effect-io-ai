Package: `effect`<br />
Module: `Stream`<br />

## Stream.zipWithPreviousAndNext

Zips each element with its previous and next values.

**Example**

```ts
import { Console, Effect, Option, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.make(1, 2, 3).pipe(
    Stream.zipWithPreviousAndNext,
    Stream.runCollect
  )
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ [Option.none(), 1, Option.some(2)], [Option.some(1), 2, Option.some(3)], [Option.some(2), 3, Option.none()] ]
```

**Signature**

```ts
declare const zipWithPreviousAndNext: <A, E, R>(self: Stream<A, E, R>) => Stream<[Option.Option<A>, A, Option.Option<A>], E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3618)

Since v2.0.0