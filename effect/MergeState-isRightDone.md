Package: `effect`<br />
Module: `MergeState`<br />

## MergeState.isRightDone

Returns `true` if the specified `MergeState` is a `RightDone`, `false`
otherwise.

**Signature**

```ts
declare const isRightDone: <Env, Err, Err1, Err2, Elem, Done, Done1, Done2>(self: MergeState<Env, Err, Err1, Err2, Elem, Done, Done1, Done2>) => self is RightDone<Env, Err, Err1, Err2, Elem, Done, Done1, Done2>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MergeState.ts#L142)

Since v2.0.0