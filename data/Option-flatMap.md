# flatMap

Applies a function to the value of an `Option` and flattens the result, if the input is `Some`.

Part of the `Option` module, imported from `@effect/data/Option`.

**Signature**

```ts
export declare const flatMap: {
  <A, B>(f: (a: A) => Option<B>): (self: Option<A>) => Option<B>
  <A, B>(self: Option<A>, f: (a: A) => Option<B>): Option<B>
}
```
