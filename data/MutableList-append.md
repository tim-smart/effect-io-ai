# append

Appends the specified value to the end of the list.

Part of the `MutableList` module, imported from `@effect/data/MutableList`.

**Signature**

```ts
export declare const append: {
  <A>(value: A): (self: MutableList<A>) => MutableList<A>
  <A>(self: MutableList<A>, value: A): MutableList<A>
}
```
