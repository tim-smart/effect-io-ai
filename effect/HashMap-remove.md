# remove

Remove the entry for the specified key in the `HashMap` using the internal
hashing function.

To import and use `remove` from the "HashMap" module:

```ts
import * as HashMap from 'effect/HashMap'

// Can be accessed like this
HashMap.remove
```

**Signature**

```ts
export declare const remove: {
  <K>(key: K): <V>(self: HashMap<K, V>) => HashMap<K, V>
  <K, V>(self: HashMap<K, V>, key: K): HashMap<K, V>
}
```
