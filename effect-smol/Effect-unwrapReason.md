Package: `effect`<br />
Module: `Effect`<br />

## Effect.unwrapReason

Promotes nested reason errors into the Effect error channel, replacing
the parent error.

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

// Before: Effect<string, AiError>
// After:  Effect<string, RateLimitError | QuotaExceededError>
const unwrapped = program.pipe(Effect.unwrapReason("AiError"))
```

**Signature**

```ts
declare const unwrapReason: { <K extends TagsWithReason<E>, E>(errorTag: K): <A, R>(self: Effect<A, E, R>) => Effect<A, ExcludeTag<E, K> | ReasonOf<ExtractTag<E, K>>, R>; <A, E, R, K extends TagsWithReason<E>>(self: Effect<A, E, R>, errorTag: K): Effect<A, ExcludeTag<E, K> | ReasonOf<ExtractTag<E, K>>, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3145)

Since v4.0.0