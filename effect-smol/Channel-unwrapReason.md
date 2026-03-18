Package: `effect`<br />
Module: `Channel`<br />

## Channel.unwrapReason

Promotes nested reason errors into the channel error, replacing the parent error.

**Example**

```ts
import { Channel, Data } from "effect"

class RateLimitError extends Data.TaggedError("RateLimitError")<{
  retryAfter: number
}> {}

class QuotaExceededError extends Data.TaggedError("QuotaExceededError")<{
  limit: number
}> {}

class AiError extends Data.TaggedError("AiError")<{
  reason: RateLimitError | QuotaExceededError
}> {}

const channel = Channel.fail(
  new AiError({ reason: new RateLimitError({ retryAfter: 60 }) })
)

const unwrapped = channel.pipe(Channel.unwrapReason("AiError"))
```

**Signature**

```ts
declare const unwrapReason: { <K extends TagsWithReason<OutErr>, OutErr>(errorTag: K): <OutElem, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, Types.ExcludeTag<OutErr, K> | Types.ReasonOf<Types.ExtractTag<OutErr, K>>, OutDone, InElem, InErr, InDone, Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, K extends TagsWithReason<OutErr>>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, errorTag: K): Channel<OutElem, Types.ExcludeTag<OutErr, K> | Types.ReasonOf<Types.ExtractTag<OutErr, K>>, OutDone, InElem, InErr, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L5112)

Since v4.0.0