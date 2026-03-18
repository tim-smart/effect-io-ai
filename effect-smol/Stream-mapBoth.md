Package: `effect`<br />
Module: `Stream`<br />

## Stream.mapBoth

Maps both the failure and success channels of a stream.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const mapper = {
  onFailure: (error: string) => `error: ${error}`,
  onSuccess: (value: number) => value * 2
}

const program = Effect.gen(function*() {
  const success = yield* Stream.make(1, 2).pipe(
    Stream.mapBoth(mapper),
    Stream.runCollect
  )
  yield* Console.log(success)

  const failure = yield* Stream.fail("boom").pipe(
    Stream.mapBoth(mapper),
    Stream.catch((error: string) => Stream.succeed(error)),
    Stream.runCollect
  )
  yield* Console.log(failure)
})

Effect.runPromise(program)
// Output: [ 2, 4 ]
// Output: [ "error: boom" ]
```

**Signature**

```ts
declare const mapBoth: { <E, E2, A, A2>(options: { readonly onFailure: (e: E) => E2; readonly onSuccess: (a: A) => A2; }): <R>(self: Stream<A, E, R>) => Stream<A2, E2, R>; <A, E, R, E2, A2>(self: Stream<A, E, R>, options: { readonly onFailure: (e: E) => E2; readonly onSuccess: (a: A) => A2; }): Stream<A2, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1777)

Since v2.0.0