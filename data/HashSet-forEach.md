# forEach

Applies the specified function to the values of the `HashSet`.

Part of the `HashSet` module, imported from `@effect/data/HashSet`.

**Signature**

```ts
export declare const forEach: {
  <A>(f: (value: A) => void): (self: HashSet<A>) => void
  <A>(self: HashSet<A>, f: (value: A) => void): void
}
```
