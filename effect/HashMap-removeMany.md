# removeMany

Removes all entries in the `HashMap` which have the specified keys.

To import and use `removeMany` from the "HashMap" module:

```ts
import * as HashMap from "effect/HashMap"
// Can be accessed like this
HashMap.removeMany
```

**Signature**

```ts
export declare const removeMany: {
  <K>(keys: Iterable<K>): <V>(self: HashMap<K, V>) => HashMap<K, V>
  <K, V>(self: HashMap<K, V>, keys: Iterable<K>): HashMap<K, V>
}
```
