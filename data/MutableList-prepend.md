# prepend

Prepends the specified value to the beginning of the list.

Part of the `MutableList` module, imported from `@effect/data/MutableList`.

**Signature**

```ts
export declare const prepend: {
  <A>(value: A): (self: MutableList<A>) => MutableList<A>
  <A>(self: MutableList<A>, value: A): MutableList<A>
}
```
