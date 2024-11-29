# has

Checks if the specified key has an entry in the `HashMap`.

To import and use `has` from the "HashMap" module:

ts
import \* as HashMap from "effect/HashMap"
// Can be accessed like this
HashMap.has
undefined

**Signature**

```ts
export declare const has: {
  <K1>(key: K1): <K, V>(self: HashMap<K, V>) => boolean
  <K, V, K1>(self: HashMap<K, V>, key: K1): boolean
}
```
