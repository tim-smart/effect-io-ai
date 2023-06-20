# filterMap

Maps over the values of the `HashMap` using the specified partial function
and filters out `None` values.

To import and use `filterMap` from the "HashMap" module:

```ts
import * as HashMap from '@effect/data/HashMap'

// Can be accessed like this
HashMap.filterMap
```

**Signature**

```ts
export declare const filterMap: {
  <A, B>(f: (value: A) => Option<B>): <K>(self: HashMap<K, A>) => HashMap<K, B>
  <K, A, B>(self: HashMap<K, A>, f: (value: A) => Option<B>): HashMap<K, B>
}
```
