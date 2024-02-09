# forEach

Applies the function `f` to each element of the `Iterable<A>` and returns
a transactional effect that produces a new `Chunk<A2>`.

To import and use `forEach` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.forEach
```

**Signature**

```ts
export declare const forEach: {
  <A, R, E, A2>(
    f: (a: A) => STM<A2, E, R>,
    options?: { readonly discard?: false | undefined }
  ): (elements: Iterable<A>) => STM<A2[], E, R>
  <A, R, E, A2>(
    f: (a: A) => STM<A2, E, R>,
    options: { readonly discard: true }
  ): (elements: Iterable<A>) => STM<void, E, R>
  <A, R, E, A2>(
    elements: Iterable<A>,
    f: (a: A) => STM<A2, E, R>,
    options?: { readonly discard?: false | undefined }
  ): STM<A2[], E, R>
  <A, R, E, A2>(elements: Iterable<A>, f: (a: A) => STM<A2, E, R>, options: { readonly discard: true }): STM<void, E, R>
}
```
