## isBothRunning

Returns `true` if the specified `MergeState` is a `BothRunning`, `false`
otherwise.

**Signature**

```ts
declare const isBothRunning: <Env, Err, Err1, Err2, Elem, Done, Done1, Done2>(self: MergeState<Env, Err, Err1, Err2, Elem, Done, Done1, Done2>) => self is BothRunning<Env, Err, Err1, Err2, Elem, Done, Done1, Done2>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MergeState.ts#L120)

Since v2.0.0