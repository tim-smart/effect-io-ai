# set

Sets the specified key to the specified value using the internal hashing
function.

To import and use `set` from the "HashMap" module:

```ts
import * as HashMap from '@effect/data/HashMap'

// Can be accessed like this
HashMap.set
```

**Signature**

```ts
export declare const set: {
  <K, V>(key: K, value: V): (self: HashMap<K, V>) => HashMap<K, V>
  <K, V>(self: HashMap<K, V>, key: K, value: V): HashMap<K, V>
}
```
