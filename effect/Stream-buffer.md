# buffer

Allows a faster producer to progress independently of a slower consumer by
buffering up to `capacity` elements in a queue.

To import and use `buffer` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.buffer
```

**Signature**

```ts
export declare const buffer: {
  (
    options:
      | { readonly capacity: "unbounded" }
      | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined }
  ): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
  <A, E, R>(
    self: Stream<A, E, R>,
    options:
      | { readonly capacity: "unbounded" }
      | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined }
  ): Stream<A, E, R>
}
```
