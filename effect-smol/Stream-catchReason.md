Package: `effect`<br />
Module: `Stream`<br />

## Stream.catchReason

Catches a specific reason within a tagged error.

Use this to handle nested error causes without removing the parent error
from the error channel. The handler receives the unwrapped reason.

**Example**

```ts
import { Console, Data, Effect, Stream } from "effect"

class RateLimitError extends Data.TaggedError("RateLimitError")<{
  retryAfter: number
}> {}

class QuotaExceededError extends Data.TaggedError("QuotaExceededError")<{
  limit: number
}> {}

class AiError extends Data.TaggedError("AiError")<{
  reason: RateLimitError | QuotaExceededError
}> {}

const stream = Stream.fail(
  new AiError({ reason: new RateLimitError({ retryAfter: 60 }) })
)

const program = Effect.gen(function*() {
  const values = yield* stream.pipe(
    Stream.catchReason("AiError", "RateLimitError", (reason) =>
      Stream.succeed(`retry: ${reason.retryAfter}`)
    ),
    Stream.runCollect
  )
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ "retry: 60" ]
```

**Signature**

```ts
declare const catchReason: { <K extends Tags<E>, E, RK extends ReasonTags<ExtractTag<NoInfer<E>, K>>, A2, E2, R2, A3 = unassigned, E3 = never, R3 = never>(errorTag: K, reasonTag: RK, f: (reason: ExtractReason<ExtractTag<NoInfer<E>, K>, RK>, error: NarrowReason<ExtractTag<NoInfer<E>, K>, RK>) => Stream<A2, E2, R2>, orElse?: ((reason: ExcludeReason<ExtractTag<NoInfer<E>, K>, RK>, error: OmitReason<ExtractTag<NoInfer<E>, K>, RK>) => Stream<A3, E3, R3>) | undefined): <A, R>(self: Stream<A, E, R>) => Stream<A | A2 | Exclude<A3, unassigned>, (A3 extends unassigned ? E : ExcludeTag<E, K>) | E2 | E3, R | R2 | R3>; <A, E, R, K extends Tags<E>, RK extends ReasonTags<ExtractTag<E, K>>, A2, E2, R2, A3 = unassigned, E3 = never, R3 = never>(self: Stream<A, E, R>, errorTag: K, reasonTag: RK, f: (reason: ExtractReason<ExtractTag<E, K>, RK>, error: NarrowReason<ExtractTag<E, K>, RK>) => Stream<A2, E2, R2>, orElse?: ((reason: ExcludeReason<ExtractTag<E, K>, RK>, error: OmitReason<ExtractTag<E, K>, RK>) => Stream<A3, E3, R3>) | undefined): Stream<A | A2 | Exclude<A3, unassigned>, (A3 extends unassigned ? E : ExcludeTag<E, K>) | E2 | E3, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L5062)

Since v4.0.0