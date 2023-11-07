# map

Maps over the entries of the `HashMap` using the specified function.

To import and use `map` from the "HashMap" module:

```ts
import * as HashMap from 'effect/HashMap'

// Can be accessed like this
HashMap.map
```

**Signature**

```ts
export declare const map: {
  <A, V, K>(f: (value: V, key: K) => A): (self: HashMap<K, V>) => HashMap<K, A>
  <K, V, A>(self: HashMap<K, V>, f: (value: V, key: K) => A): HashMap<K, A>
}
```
