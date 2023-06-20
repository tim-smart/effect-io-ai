# forEach

Applies the specified function to the values of the `HashMap`.

To import and use `forEach` from the "HashMap" module:

```ts
import * as HashMap from '@effect/data/HashMap'

// Can be accessed like this
HashMap.forEach
```

**Signature**

```ts
export declare const forEach: {
  <V>(f: (value: V) => void): <K>(self: HashMap<K, V>) => void
  <K, V>(self: HashMap<K, V>, f: (value: V) => void): void
}
```
