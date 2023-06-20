# intersperseAffixes

Intersperse the specified element, also adding a prefix and a suffix.

To import and use `intersperseAffixes` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.intersperseAffixes
```

**Signature**

```ts
export declare const intersperseAffixes: {
  <A2, A3, A4>(start: A2, middle: A3, end: A4): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A2 | A3 | A4 | A>
  <R, E, A, A2, A3, A4>(self: Stream<R, E, A>, start: A2, middle: A3, end: A4): Stream<R, E, A | A2 | A3 | A4>
}
```
