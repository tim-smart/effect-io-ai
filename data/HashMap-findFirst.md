# findFirst

Returns the first element that satisfies the specified
predicate, or `None` if no such element exists.

To import and use `findFirst` from the "HashMap" module:

```ts
import * as HashMap from '@effect/data/HashMap'

// Can be accessed like this
HashMap.findFirst
```

**Signature**

```ts
export declare const findFirst: {
  <K, A>(predicate: (k: K, a: A) => boolean): (self: HashMap<K, A>) => Option<[K, A]>
  <K, A>(self: HashMap<K, A>, predicate: (k: K, a: A) => boolean): Option<[K, A]>
}
```
