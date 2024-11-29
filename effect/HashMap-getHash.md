# getHash

Lookup the value for the specified key in the `HashMap` using a custom hash.

To import and use `getHash` from the "HashMap" module:

ts
import \* as HashMap from "effect/HashMap"
// Can be accessed like this
HashMap.getHash
undefined

**Signature**

```ts
export declare const getHash: {
  <K1>(key: K1, hash: number): <K, V>(self: HashMap<K, V>) => Option<V>
  <K, V, K1>(self: HashMap<K, V>, key: K1, hash: number): Option<V>
}
```
