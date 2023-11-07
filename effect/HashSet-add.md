# add

Adds a value to the `HashSet`.

To import and use `add` from the "HashSet" module:

```ts
import * as HashSet from 'effect/HashSet'

// Can be accessed like this
HashSet.add
```

**Signature**

```ts
export declare const add: {
  <A>(value: A): (self: HashSet<A>) => HashSet<A>
  <A>(self: HashSet<A>, value: A): HashSet<A>
}
```
