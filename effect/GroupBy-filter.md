# filter

Filter the groups to be processed.

To import and use `filter` from the "GroupBy" module:

ts
import \* as GroupBy from "effect/GroupBy"
// Can be accessed like this
GroupBy.filter
undefined

**Signature**

```ts
export declare const filter: {
  <K>(predicate: Predicate<NoInfer<K>>): <V, E, R>(self: GroupBy<K, V, E, R>) => GroupBy<K, V, E, R>
  <K, V, E, R>(self: GroupBy<K, V, E, R>, predicate: Predicate<K>): GroupBy<K, V, E, R>
}
```
