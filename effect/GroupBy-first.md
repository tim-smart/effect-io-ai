# first

Only consider the first `n` groups found in the `Stream`.

To import and use `first` from the "GroupBy" module:

ts
import \* as GroupBy from "effect/GroupBy"
// Can be accessed like this
GroupBy.first
undefined

**Signature**

```ts
export declare const first: {
  (n: number): <K, V, E, R>(self: GroupBy<K, V, E, R>) => GroupBy<K, V, E, R>
  <K, V, E, R>(self: GroupBy<K, V, E, R>, n: number): GroupBy<K, V, E, R>
}
```
