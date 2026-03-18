Package: `effect`<br />
Module: `Stream`<br />

## Stream.mapError

Transforms the errors emitted by this stream using `f`.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const result = yield* Stream.fail("bad").pipe(
    Stream.mapError((error) => `mapped: ${error}`),
    Stream.catch((error) => Stream.make(`recovered from ${error}`)),
    Stream.runCollect
  )
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ "recovered from mapped: bad" ]
```

**Signature**

```ts
declare const mapError: { <E, E2>(f: (error: E) => E2): <A, R>(self: Stream<A, E, R>) => Stream<A, E2, R>; <A, E, R, E2>(self: Stream<A, E, R>, f: (error: E) => E2): Stream<A, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L5308)

Since v2.0.0