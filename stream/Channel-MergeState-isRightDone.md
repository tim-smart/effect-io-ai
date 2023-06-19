# isRightDone

Returns `true` if the specified `MergeState` is a `RightDone`, `false`
otherwise.

Part of the `MergeState` module, imported from `@effect/stream/Channel/MergeState`.

**Signature**

```ts
export declare const isRightDone: <Env, Err, Err1, Err2, Elem, Done, Done1, Done2>(
  self: MergeState<Env, Err, Err1, Err2, Elem, Done, Done1, Done2>
) => self is RightDone<Env, Err, Err1, Err2, Elem, Done, Done1, Done2>
```
