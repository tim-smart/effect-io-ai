# mapBoth

Returns a stream whose failure and success channels have been mapped by the
specified `onFailure` and `onSuccess` functions.

To import and use `mapBoth` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.mapBoth
undefined

**Signature**

```ts
export declare const mapBoth: {
  <E, E2, A, A2>(options: {
    readonly onFailure: (e: E) => E2
    readonly onSuccess: (a: A) => A2
  }): <R>(self: Stream<A, E, R>) => Stream<A2, E2, R>
  <A, E, R, E2, A2>(
    self: Stream<A, E, R>,
    options: { readonly onFailure: (e: E) => E2; readonly onSuccess: (a: A) => A2 }
  ): Stream<A2, E2, R>
}
```
