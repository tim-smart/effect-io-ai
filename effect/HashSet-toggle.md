# toggle

Checks if a value is present in the `HashSet`. If it is present, the value
will be removed from the `HashSet`, otherwise the value will be added to the
`HashSet`.

To import and use `toggle` from the "HashSet" module:

ts
import \* as HashSet from "effect/HashSet"
// Can be accessed like this
HashSet.toggle
undefined

**Signature**

```ts
export declare const toggle: {
  <A>(value: A): (self: HashSet<A>) => HashSet<A>
  <A>(self: HashSet<A>, value: A): HashSet<A>
}
```
