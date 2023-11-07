# mutate

Mutates the `HashMap` within the context of the provided function.

To import and use `mutate` from the "HashMap" module:

```ts
import * as HashMap from 'effect/HashMap'

// Can be accessed like this
HashMap.mutate
```

**Signature**

```ts
export declare const mutate: {
  <K, V>(f: (self: HashMap<K, V>) => void): (self: HashMap<K, V>) => HashMap<K, V>
  <K, V>(self: HashMap<K, V>, f: (self: HashMap<K, V>) => void): HashMap<K, V>
}
```
