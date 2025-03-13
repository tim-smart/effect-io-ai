Package: `effect`<br />
Module: `MergeState`<br />

## MergeState.isLeftDone

Returns `true` if the specified `MergeState` is a `LeftDone`, `false`
otherwise.

**Signature**

```ts
declare const isLeftDone: <Env, Err, Err1, Err2, Elem, Done, Done1, Done2>(self: MergeState<Env, Err, Err1, Err2, Elem, Done, Done1, Done2>) => self is LeftDone<Env, Err, Err1, Err2, Elem, Done, Done1, Done2>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MergeState.ts#L131)

Since v2.0.0