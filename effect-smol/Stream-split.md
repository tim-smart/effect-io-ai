Package: `effect`<br />
Module: `Stream`<br />

## Stream.split

Splits the stream into non-empty groups whenever the predicate matches.

Matching elements act as delimiters and are not included in the output.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const result = yield* Stream.range(0, 9).pipe(
    Stream.split((n) => n % 4 === 0),
    Stream.runCollect
  )
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ [1, 2, 3], [5, 6, 7], [9] ]
```

**Signature**

```ts
declare const split: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): <E, R>(self: Stream<A, E, R>) => Stream<Arr.NonEmptyReadonlyArray<Exclude<A, B>>, E, R>; <A>(predicate: Predicate<NoInfer<A>>): <E, R>(self: Stream<A, E, R>) => Stream<Arr.NonEmptyReadonlyArray<A>, E, R>; <A, E, R, B extends A>(self: Stream<A, E, R>, refinement: Refinement<A, B>): Stream<Arr.NonEmptyReadonlyArray<Exclude<A, B>>, E, R>; <A, E, R>(self: Stream<A, E, R>, predicate: Predicate<A>): Stream<Arr.NonEmptyReadonlyArray<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6608)

Since v2.0.0