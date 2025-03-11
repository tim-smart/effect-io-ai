## toPull

Returns a scoped `Effect` that can be used to repeatedly pull elements from
the constructed `Channel`. The pull effect fails with the channel's failure
in case the channel fails, or returns either the channel's done value or an
emitted element.

**Signature**

```ts
declare const toPull: <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Effect.Effect<Effect.Effect<Either.Either<OutElem, OutDone>, OutErr, Env>, never, Scope.Scope | Env>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L2056)

Since v2.0.0