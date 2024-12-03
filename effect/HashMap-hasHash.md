# hasHash

Checks if the specified key has an entry in the `HashMap` using a custom
hash.

To import and use `hasHash` from the "HashMap" module:

```ts
import * as HashMap from "effect/HashMap"
// Can be accessed like this
HashMap.hasHash
```

**Signature**

```ts
export declare const hasHash: {
  <K1>(key: K1, hash: number): <K, V>(self: HashMap<K, V>) => boolean
  <K, V, K1>(self: HashMap<K, V>, key: K1, hash: number): boolean
}
```
