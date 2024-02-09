# intersperseAffixes

Intersperse the specified element, also adding a prefix and a suffix.

To import and use `intersperseAffixes` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.intersperseAffixes
```

**Signature**

```ts
export declare const intersperseAffixes: {
  <A2, A3, A4>(options: {
    readonly start: A2
    readonly middle: A3
    readonly end: A4
  }): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A3 | A4 | A, E, R>
  <R, E, A, A2, A3, A4>(
    self: Stream<A, E, R>,
    options: { readonly start: A2; readonly middle: A3; readonly end: A4 }
  ): Stream<A | A2 | A3 | A4, E, R>
}
```
