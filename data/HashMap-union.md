# union

Performs a union of this `HashMap` and that `HashMap`.

Part of the `HashMap` module, imported from `@effect/data/HashMap`.

**Signature**

```ts
export declare const union: {
  <K1, V1>(that: HashMap<K1, V1>): <K0, V0>(self: HashMap<K0, V0>) => HashMap<K1 | K0, V1 | V0>
  <K0, V0, K1, V1>(self: HashMap<K0, V0>, that: HashMap<K1, V1>): HashMap<K0 | K1, V0 | V1>
}
```
