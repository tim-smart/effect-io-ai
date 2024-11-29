# keySet

Returns a `HashSet` of keys within the `HashMap`.

To import and use `keySet` from the "HashMap" module:

ts
import \* as HashMap from "effect/HashMap"
// Can be accessed like this
HashMap.keySet
undefined

**Signature**

```ts
export declare const keySet: <K, V>(self: HashMap<K, V>) => HashSet<K>
```
