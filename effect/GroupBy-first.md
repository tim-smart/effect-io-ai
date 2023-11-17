# first

Only consider the first `n` groups found in the `Stream`.

To import and use `first` from the "GroupBy" module:

```ts
import * as GroupBy from "effect/GroupBy"
// Can be accessed like this
GroupBy.first
```

**Signature**

```ts
export declare const first: {
  (n: number): <R, E, K, V>(self: GroupBy<R, E, K, V>) => GroupBy<R, E, K, V>
  <R, E, K, V>(self: GroupBy<R, E, K, V>, n: number): GroupBy<R, E, K, V>
}
```
