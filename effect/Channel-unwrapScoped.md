## unwrapScoped

Constructs a `Channel` from a scoped effect that will result in a
`Channel` if successful.

**Signature**

```ts
declare const unwrapScoped: <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, E, R>(self: Effect.Effect<Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, E, R>) => Channel<OutElem, InElem, E | OutErr, InErr, OutDone, InDone, Env | Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L2138)

Since v2.0.0