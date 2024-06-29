# filterMap

Maps over the entries of the `HashMap` using the specified partial function
and filters out `None` values.

To import and use `filterMap` from the "HashMap" module:

```ts
import * as HashMap from "effect/HashMap"
// Can be accessed like this
HashMap.filterMap
```

**Signature**

```ts
export declare const filterMap: {
  <A, K, B>(f: (value: A, key: K) => Option<B>): (self: HashMap<K, A>) => HashMap<K, B>
  <K, A, B>(self: HashMap<K, A>, f: (value: A, key: K) => Option<B>): HashMap<K, B>
}
```
