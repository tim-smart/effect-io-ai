## unwrapScopedWith

Constructs a `Channel` from a function which receives a `Scope` and returns
an effect that will result in a `Channel` if successful.

**Signature**

```ts
declare const unwrapScopedWith: <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, E, R>(f: (scope: Scope.Scope) => Effect.Effect<Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, E, R>) => Channel<OutElem, InElem, E | OutErr, InErr, OutDone, InDone, R | Env>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L2149)

Since v3.11.0