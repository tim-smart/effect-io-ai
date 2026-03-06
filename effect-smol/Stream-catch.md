Package: `effect`<br />
Module: `Stream`<br />

## Stream.catch

Switches over to the stream produced by the provided function if this one fails.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Stream.catchAll`

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2).pipe(
  Stream.concat(Stream.fail("Oops!")),
  Stream.catch(() => Stream.make(999))
)

const program = Effect.gen(function*() {
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 999 ]
```

**Signature**

```ts
declare const catch: { <E, A2, E2, R2>(f: (error: E) => Stream<A2, E2, R2>): <A, R>(self: Stream<A, E, R>) => Stream<A | A2, E2, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, f: (error: E) => Stream<A2, E2, R2>): Stream<A | A2, E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4619)

Since v4.0.0