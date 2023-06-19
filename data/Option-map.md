# map

Maps the `Some` side of an `Option` value to a new `Option` value.

Part of the `Option` module, imported from `@effect/data/Option`.

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): (self: Option<A>) => Option<B>
  <A, B>(self: Option<A>, f: (a: A) => B): Option<B>
}
```
