# isLeftDone

Returns `true` if the specified `MergeState` is a `LeftDone`, `false`
otherwise.

Part of the `MergeState` module, imported from `@effect/stream/Channel/MergeState`.

**Signature**

```ts
export declare const isLeftDone: <Env, Err, Err1, Err2, Elem, Done, Done1, Done2>(
  self: MergeState<Env, Err, Err1, Err2, Elem, Done, Done1, Done2>
) => self is LeftDone<Env, Err, Err1, Err2, Elem, Done, Done1, Done2>
```
