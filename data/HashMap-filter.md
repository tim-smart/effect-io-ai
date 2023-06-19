# filter

Filters entries out of a `HashMap` using the specified predicate.

Part of the `HashMap` module, imported from `@effect/data/HashMap`.

**Signature**

```ts
export declare const filter: {
  <A, B extends A>(f: Refinement<A, B>): <K>(self: HashMap<K, A>) => HashMap<K, B>
  <A>(f: Predicate<A>): <K>(self: HashMap<K, A>) => HashMap<K, A>
  <K, A, B extends A>(self: HashMap<K, A>, f: Refinement<A, B>): HashMap<K, B>
  <K, A>(self: HashMap<K, A>, f: Predicate<A>): HashMap<K, A>
}
```
