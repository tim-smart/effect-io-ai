# forEach

Applies the specified function to the values of the `HashSet`.

To import and use `forEach` from the "HashSet" module:

```ts
import * as HashSet from 'effect/HashSet'

// Can be accessed like this
HashSet.forEach
```

**Signature**

```ts
export declare const forEach: {
  <A>(f: (value: A) => void): (self: HashSet<A>) => void
  <A>(self: HashSet<A>, f: (value: A) => void): void
}
```
