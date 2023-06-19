# filterMap

Maps over the values of the `HashMap` using the specified partial function
and filters out `None` values.

Part of the `HashMap` module, imported from `@effect/data/HashMap`.

**Signature**

```ts
export declare const filterMap: {
  <A, B>(f: (value: A) => Option<B>): <K>(self: HashMap<K, A>) => HashMap<K, B>
  <K, A, B>(self: HashMap<K, A>, f: (value: A) => Option<B>): HashMap<K, B>
}
```
