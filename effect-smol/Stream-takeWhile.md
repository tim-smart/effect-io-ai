Package: `effect`<br />
Module: `Stream`<br />

## Stream.takeWhile

Takes the longest initial prefix of elements that satisfy the predicate.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.range(1, 5).pipe(
  Stream.takeWhile((n) => n % 3 !== 0)
)

const program = Effect.gen(function*() {
  const result = yield* Stream.runCollect(stream)
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ 1, 2 ]
```

**Signature**

```ts
declare const takeWhile: { <A, B extends A>(refinement: (a: NoInfer<A>, n: number) => a is B): <E, R>(self: Stream<A, E, R>) => Stream<B, E, R>; <A>(predicate: (a: NoInfer<A>, n: number) => boolean): <E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R, B extends A>(self: Stream<A, E, R>, refinement: (a: NoInfer<A>, n: number) => a is B): Stream<B, E, R>; <A, E, R>(self: Stream<A, E, R>, predicate: (a: NoInfer<A>, n: number) => boolean): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6078)

Since v2.0.0