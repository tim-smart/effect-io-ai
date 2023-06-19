# flatMap

Chains over the values of the `HashMap` using the specified function.

**NOTE**: the hash and equal of both maps have to be the same.

Part of the `HashMap` module, imported from `@effect/data/HashMap`.

**Signature**

```ts
export declare const flatMap: {
  <K, A, B>(f: (value: A) => HashMap<K, B>): (self: HashMap<K, A>) => HashMap<K, B>
  <K, A, B>(self: HashMap<K, A>, f: (value: A) => HashMap<K, B>): HashMap<K, B>
}
```
