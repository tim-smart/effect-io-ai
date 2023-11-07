# toPull

Returns a scoped `Effect` that can be used to repeatedly pull elements from
the constructed `Channel`. The pull effect fails with the channel's failure
in case the channel fails, or returns either the channel's done value or an
emitted element.

To import and use `toPull` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.toPull
```

**Signature**

```ts
export declare const toPull: <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
  self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
) => Effect.Effect<Scope.Scope | Env, never, Effect.Effect<Env, OutErr, Either.Either<OutDone, OutElem>>>
```
