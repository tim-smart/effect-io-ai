## toPullIn

Returns an `Effect` that can be used to repeatedly pull elements from the
constructed `Channel` within the provided `Scope`. The pull effect fails
with the channel's failure in case the channel fails, or returns either the
channel's done value or an emitted element.

**Signature**

```ts
declare const toPullIn: { (scope: Scope.Scope): <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Effect.Effect<Effect.Effect<Either.Either<OutElem, OutDone>, OutErr, Env>, never, Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, scope: Scope.Scope): Effect.Effect<Effect.Effect<Either.Either<OutElem, OutDone>, OutErr, Env>, never, Env>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L2070)

Since v3.11.0