# toPullIn

Returns an `Effect` that can be used to repeatedly pull elements from the
constructed `Channel` within the provided `Scope`. The pull effect fails
with the channel's failure in case the channel fails, or returns either the
channel's done value or an emitted element.

To import and use `toPullIn` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.toPullIn
```

**Signature**

```ts
export declare const toPullIn: {
  (
    scope: Scope.Scope
  ): <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Effect.Effect<Effect.Effect<Either.Either<OutElem, OutDone>, OutErr, Env>, never, Env>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    scope: Scope.Scope
  ): Effect.Effect<Effect.Effect<Either.Either<OutElem, OutDone>, OutErr, Env>, never, Env>
}
```
