# map

Transforms `Take<E, A>` to `Take<E, B>` by applying function `f`.

Part of the `Take` module, imported from `@effect/stream/Take`.

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): <E>(self: Take<E, A>) => Take<E, B>
  <E, A, B>(self: Take<E, A>, f: (a: A) => B): Take<E, B>
}
```
