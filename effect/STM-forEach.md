# forEach

Applies the function `f` to each element of the `Iterable<A>` and returns
a transactional effect that produces a new `Chunk<A2>`.

To import and use `forEach` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.forEach
```

**Signature**

```ts
export declare const forEach: {
  <A, R, E, A2>(f: (a: A) => STM<R, E, A2>, options?: { readonly discard?: false }): (
    elements: Iterable<A>
  ) => STM<R, E, A2[]>
  <A, R, E, A2>(f: (a: A) => STM<R, E, A2>, options: { readonly discard: true }): (
    elements: Iterable<A>
  ) => STM<R, E, void>
  <A, R, E, A2>(elements: Iterable<A>, f: (a: A) => STM<R, E, A2>, options?: { readonly discard?: false }): STM<
    R,
    E,
    A2[]
  >
  <A, R, E, A2>(elements: Iterable<A>, f: (a: A) => STM<R, E, A2>, options: { readonly discard: true }): STM<R, E, void>
}
```
