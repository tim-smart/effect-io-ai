# toPull

Returns a scoped `Effect` that can be used to repeatedly pull elements from
the constructed `Channel`. The pull effect fails with the channel's failure
in case the channel fails, or returns either the channel's done value or an
emitted element.

To import and use `toPull` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.toPull
undefined

**Signature**

```ts
export declare const toPull: <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(
  self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
) => Effect.Effect<Effect.Effect<Either.Either<OutElem, OutDone>, OutErr, Env>, never, Scope.Scope | Env>
```
