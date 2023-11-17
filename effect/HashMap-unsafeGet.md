# unsafeGet

Unsafely lookup the value for the specified key in the `HashMap` using the
internal hashing function.

To import and use `unsafeGet` from the "HashMap" module:

```ts
import * as HashMap from "effect/HashMap"
// Can be accessed like this
HashMap.unsafeGet
```

**Signature**

```ts
export declare const unsafeGet: {
  <K1>(key: K1): <K, V>(self: HashMap<K, V>) => V
  <K, V, K1>(self: HashMap<K, V>, key: K1): V
}
```
