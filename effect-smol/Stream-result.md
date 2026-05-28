Package: `effect`<br />
Module: `Stream`<br />

## Stream.result

Lifts failures and successes into a `Result`, yielding a stream that cannot fail.

**Details**

The stream ends after the first failure, emitting a `Result.fail` value.

**Example** (Converting failures to results)

```ts
import { Console, Effect, Result, Stream } from "effect"

const program = Effect.gen(function*() {
  const results = yield* Stream.make(1, 2).pipe(
    Stream.concat(Stream.fail("boom")),
    Stream.result,
    Stream.map(Result.match({
      onFailure: (error) => `failure: ${error}`,
      onSuccess: (value) => `success: ${value}`
    })),
    Stream.runCollect
  )
  yield* Console.log(results)
})

Effect.runPromise(program)
// Output: [ "success: 1", "success: 2", "failure: boom" ]
```

**Signature**

```ts
declare const result: <A, E, R>(self: Stream<A, E, R>) => Stream<Result.Result<A, E>, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2226)

Since v4.0.0