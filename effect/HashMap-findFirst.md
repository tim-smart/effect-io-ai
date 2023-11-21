# findFirst

Returns the first element that satisfies the specified
predicate, or `None` if no such element exists.

To import and use `findFirst` from the "HashMap" module:

```ts
import * as HashMap from "effect/HashMap"
// Can be accessed like this
HashMap.findFirst
```

**Signature**

```ts
export declare const findFirst: {
  <K, A, B extends A>(predicate: (a: A, k: K) => a is B): (self: HashMap<K, A>) => Option<[K, B]>
  <K, B extends A, A = B>(predicate: (a: A, k: K) => boolean): (self: HashMap<K, B>) => Option<[K, B]>
  <K, A, B extends A>(self: HashMap<K, A>, predicate: (a: A, k: K) => a is B): Option<[K, B]>
  <K, A>(self: HashMap<K, A>, predicate: (a: A, k: K) => boolean): Option<[K, A]>
}
```
