# toggle

Checks if a value is present in the `HashSet`. If it is present, the value
will be removed from the `HashSet`, otherwise the value will be added to the
`HashSet`.

Part of the `HashSet` module, imported from `@effect/data/HashSet`.

**Signature**

```ts
export declare const toggle: {
  <A>(value: A): (self: HashSet<A>) => HashSet<A>
  <A>(self: HashSet<A>, value: A): HashSet<A>
}
```
