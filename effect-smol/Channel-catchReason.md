Package: `effect`<br />
Module: `Channel`<br />

## Channel.catchReason

Catches a specific reason within a tagged error.

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

const recovered = channel.pipe(
  Channel.catchReason("AiError", "RateLimitError", (reason) =>
    Channel.succeed(`retry: ${reason.retryAfter}`)
  )
)
```

**Signature**

```ts
declare const catchReason: { <OutErr, K extends Types.Tags<OutErr>, RK extends Types.ReasonTags<Types.ExtractTag<Types.NoInfer<OutErr>, K>>, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1, OutElem2 = Types.unassigned, OutErr2 = never, OutDone2 = never, InElem2 = unknown, InErr2 = unknown, InDone2 = unknown, Env2 = never>(errorTag: K, reasonTag: RK, f: (reason: Types.ExtractReason<Types.ExtractTag<Types.NoInfer<OutErr>, K>, RK>, error: Types.NarrowReason<Types.ExtractTag<Types.NoInfer<OutErr>, K>, RK>) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>, orElse?: ((reason: Types.ExcludeReason<Types.ExtractTag<Types.NoInfer<OutErr>, K>, RK>, error: Types.OmitReason<Types.ExtractTag<Types.NoInfer<OutErr>, K>, RK>) => Channel<OutElem2, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2>) | undefined): <OutElem, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem | OutElem1 | Exclude<OutElem2, Types.unassigned>, (OutElem2 extends Types.unassigned ? OutErr : Types.ExcludeTag<OutErr, K>) | OutErr1 | OutErr2, OutDone | OutDone1 | OutDone2, InElem & InElem1 & InElem2, InErr & InErr1 & InErr2, InDone & InDone1 & InDone2, Env | Env1 | Env2>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, K extends Types.Tags<OutErr>, RK extends Types.ReasonTags<Types.ExtractTag<Types.NoInfer<OutErr>, K>>, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1, OutElem2 = Types.unassigned, OutErr2 = never, OutDone2 = never, InElem2 = unknown, InErr2 = unknown, InDone2 = unknown, Env2 = never>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, errorTag: K, reasonTag: RK, f: (reason: Types.ExtractReason<Types.ExtractTag<Types.NoInfer<OutErr>, K>, RK>, error: Types.NarrowReason<Types.ExtractTag<Types.NoInfer<OutErr>, K>, RK>) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>, orElse?: ((reason: Types.ExcludeReason<Types.ExtractTag<Types.NoInfer<OutErr>, K>, RK>, error: Types.OmitReason<Types.ExtractTag<Types.NoInfer<OutErr>, K>, RK>) => Channel<OutElem2, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2>) | undefined): Channel<OutElem | OutElem1 | Exclude<OutElem2, Types.unassigned>, (OutElem2 extends Types.unassigned ? OutErr : Types.ExcludeTag<OutErr, K>) | OutErr1 | OutErr2, OutDone | OutDone1 | OutDone2, InElem & InElem1 & InElem2, InErr & InErr1 & InErr2, InDone & InDone1 & InDone2, Env | Env1 | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L4733)

Since v4.0.0