# mutate

Mutates the `HashSet` within the context of the provided function.

To import and use `mutate` from the "HashSet" module:

```ts
import * as HashSet from "effect/HashSet"
// Can be accessed like this
HashSet.mutate
```

**Signature**

```ts
export declare const mutate: {
  <A>(f: (set: HashSet<A>) => void): (self: HashSet<A>) => HashSet<A>
  <A>(self: HashSet<A>, f: (set: HashSet<A>) => void): HashSet<A>
}
```
