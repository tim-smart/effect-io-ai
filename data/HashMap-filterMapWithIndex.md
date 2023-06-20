# filterMapWithIndex

Maps over the entries of the `HashMap` using the specified partial function
and filters out `None` values.

To import and use `filterMapWithIndex` from the "HashMap" module:

```ts
import * as HashMap from '@effect/data/HashMap'

// Can be accessed like this
HashMap.filterMapWithIndex
```

**Signature**

```ts
export declare const filterMapWithIndex: {
  <A, K, B>(f: (value: A, key: K) => Option<B>): (self: HashMap<K, A>) => HashMap<K, B>
  <K, A, B>(self: HashMap<K, A>, f: (value: A, key: K) => Option<B>): HashMap<K, B>
}
```
