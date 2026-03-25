Package: `effect`<br />
Module: `Stream`<br />

## Stream.dropWhile

Drops elements from the stream while the specified predicate evaluates to `true`.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.make(1, 2, 3, 4, 5).pipe(
    Stream.dropWhile((n) => n < 3),
    Stream.runCollect
  )
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 3, 4, 5 ]
```

**Signature**

```ts
declare const dropWhile: { <A>(predicate: (a: NoInfer<A>, index: number) => boolean): <E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, predicate: (a: NoInfer<A>, index: number) => boolean): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6326)

Since v2.0.0