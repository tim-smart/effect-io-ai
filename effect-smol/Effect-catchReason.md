Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchReason

Catches a specific reason within a tagged error.

Use this to handle nested error causes without removing the parent error
from the error channel. The handler receives the unwrapped reason.

**Example**

```ts
import { Data, Effect } from "effect"

class RateLimitError extends Data.TaggedError("RateLimitError")<{
  retryAfter: number
}> {}

class QuotaExceededError extends Data.TaggedError("QuotaExceededError")<{
  limit: number
}> {}

class AiError extends Data.TaggedError("AiError")<{
  reason: RateLimitError | QuotaExceededError
}> {}

declare const program: Effect.Effect<string, AiError>

// Handle rate limits specifically
const handled = program.pipe(
  Effect.catchReason("AiError", "RateLimitError", (reason) =>
    Effect.succeed(`Retry after ${reason.retryAfter}s`)
  )
)
```

**Signature**

```ts
declare const catchReason: { <K extends Tags<E>, E, RK extends ReasonTags<ExtractTag<NoInfer<E>, K>>, A2, E2, R2, A3 = unassigned, E3 = never, R3 = never>(errorTag: K, reasonTag: RK, f: (reason: ExtractReason<ExtractTag<NoInfer<E>, K>, RK>, error: NarrowReason<ExtractTag<NoInfer<E>, K>, RK>) => Effect<A2, E2, R2>, orElse?: ((reasons: ExcludeReason<ExtractTag<NoInfer<E>, K>, RK>, error: OmitReason<ExtractTag<NoInfer<E>, K>, RK>) => Effect<A3, E3, R3>) | undefined): <A, R>(self: Effect<A, E, R>) => Effect<A | A2 | Exclude<A3, unassigned>, (A3 extends unassigned ? E : ExcludeTag<E, K>) | E2 | E3, R | R2 | R3>; <A, E, R, K extends Tags<E>, RK extends ReasonTags<ExtractTag<E, K>>, A2, E2, R2, A3 = unassigned, E3 = never, R3 = never>(self: Effect<A, E, R>, errorTag: K, reasonTag: RK, f: (reason: ExtractReason<ExtractTag<E, K>, RK>, error: NarrowReason<ExtractTag<E, K>, RK>) => Effect<A2, E2, R2>, orElse?: ((reasons: ExcludeReason<ExtractTag<E, K>, RK>, error: OmitReason<ExtractTag<E, K>, RK>) => Effect<A3, E3, R3>) | undefined): Effect<A | A2 | Exclude<A3, unassigned>, (A3 extends unassigned ? E : ExcludeTag<E, K>) | E2 | E3, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2910)

Since v4.0.0