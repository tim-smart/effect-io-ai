# forEach

Applies the function `f` to each element of the `Iterable<A>` and returns
a transactional effect that produces a new `Chunk<A2>`.

To import and use `forEach` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.forEach
undefined

**Signature**

```ts
export declare const forEach: {
  <A, A2, E, R>(
    f: (a: A) => STM<A2, E, R>,
    options?: { readonly discard?: false | undefined } | undefined
  ): (elements: Iterable<A>) => STM<Array<A2>, E, R>
  <A, A2, E, R>(
    f: (a: A) => STM<A2, E, R>,
    options: { readonly discard: true }
  ): (elements: Iterable<A>) => STM<void, E, R>
  <A, A2, E, R>(
    elements: Iterable<A>,
    f: (a: A) => STM<A2, E, R>,
    options?: { readonly discard?: false | undefined } | undefined
  ): STM<Array<A2>, E, R>
  <A, A2, E, R>(elements: Iterable<A>, f: (a: A) => STM<A2, E, R>, options: { readonly discard: true }): STM<void, E, R>
}
```
