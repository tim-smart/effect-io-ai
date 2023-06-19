# map

Maps over the value the Fiber computes.

Part of the `Fiber` module, imported from `@effect/io/Fiber`.

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): <E>(self: Fiber<E, A>) => Fiber<E, B>
  <E, A, B>(self: Fiber<E, A>, f: (a: A) => B): Fiber<E, B>
}
```
