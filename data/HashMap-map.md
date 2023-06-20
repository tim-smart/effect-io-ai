# map

Maps over the values of the `HashMap` using the specified function.

To import and use `map` from the "HashMap" module:

```ts
import * as HashMap from '@effect/data/HashMap'

// Can be accessed like this
HashMap.map
```

**Signature**

```ts
export declare const map: {
  <V, A>(f: (value: V) => A): <K>(self: HashMap<K, V>) => HashMap<K, A>
  <K, V, A>(self: HashMap<K, V>, f: (value: V) => A): HashMap<K, A>
}
```
