# modifyHash

Alter the value of the specified key in the `HashMap` using the specified
update function. The value of the specified key will be computed using the
provided hash.

The update function will be invoked with the current value of the key if it
exists, or `None` if no such value exists.

This function will always either update or insert a value into the `HashMap`.

To import and use `modifyHash` from the "HashMap" module:

```ts
import * as HashMap from '@effect/data/HashMap'

// Can be accessed like this
HashMap.modifyHash
```

**Signature**

```ts
export declare const modifyHash: {
  <K, V>(key: K, hash: number, f: HashMap.UpdateFn<V>): (self: HashMap<K, V>) => HashMap<K, V>
  <K, V>(self: HashMap<K, V>, key: K, hash: number, f: HashMap.UpdateFn<V>): HashMap<K, V>
}
```
