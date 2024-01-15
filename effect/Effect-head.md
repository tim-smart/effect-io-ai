# head

Returns a successful effect with the head of the collection if the collection
is non-empty, or fails with the error `None` if the collection is empty.

To import and use `head` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.head
```

**Signature**

```ts
export declare const head: <R, E, A>(self: Effect<R, E, Iterable<A>>) => Effect<R, Cause.NoSuchElementException | E, A>
```
