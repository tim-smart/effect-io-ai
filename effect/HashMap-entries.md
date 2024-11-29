# entries

Returns an `IterableIterator` of the entries within the `HashMap`.

To import and use `entries` from the "HashMap" module:

ts
import \* as HashMap from "effect/HashMap"
// Can be accessed like this
HashMap.entries
undefined

**Signature**

```ts
export declare const entries: <K, V>(self: HashMap<K, V>) => IterableIterator<[K, V]>
```
