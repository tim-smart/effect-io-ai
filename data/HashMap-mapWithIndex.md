# mapWithIndex

Maps over the entries of the `HashMap` using the specified function.

To import and use `mapWithIndex` from the "HashMap" module:

```ts
import * as HashMap from '@effect/data/HashMap'

// Can be accessed like this
HashMap.mapWithIndex
```

**Signature**

```ts
export declare const mapWithIndex: {
  <A, V, K>(f: (value: V, key: K) => A): (self: HashMap<K, V>) => HashMap<K, A>
  <K, V, A>(self: HashMap<K, V>, f: (value: V, key: K) => A): HashMap<K, A>
}
```
