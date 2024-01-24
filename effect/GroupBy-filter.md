# filter

Filter the groups to be processed.

To import and use `filter` from the "GroupBy" module:

```ts
import * as GroupBy from "effect/GroupBy"
// Can be accessed like this
GroupBy.filter
```

**Signature**

```ts
export declare const filter: {
  <K>(predicate: Predicate<NoInfer<K>>): <R, E, V>(self: GroupBy<R, E, K, V>) => GroupBy<R, E, K, V>
  <R, E, V, K>(self: GroupBy<R, E, K, V>, predicate: Predicate<K>): GroupBy<R, E, K, V>
}
```
