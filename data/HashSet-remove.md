# remove

Removes a value from the `HashSet`.

Part of the `HashSet` module, imported from `@effect/data/HashSet`.

**Signature**

```ts
export declare const remove: {
  <A>(value: A): (self: HashSet<A>) => HashSet<A>
  <A>(self: HashSet<A>, value: A): HashSet<A>
}
```
