# remove

Removes a value from the `HashSet`.

To import and use `remove` from the "HashSet" module:

```ts
import * as HashSet from "effect/HashSet"
// Can be accessed like this
HashSet.remove
```

**Signature**

```ts
export declare const remove: {
  <A>(value: A): (self: HashSet<A>) => HashSet<A>
  <A>(self: HashSet<A>, value: A): HashSet<A>
}
```
