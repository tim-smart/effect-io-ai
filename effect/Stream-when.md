# when

Returns the specified stream if the given condition is satisfied, otherwise
returns an empty stream.

To import and use `when` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.when
```

**Signature**

```ts
export declare const when: {
  (predicate: LazyArg<boolean>): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A>(self: Stream<R, E, A>, predicate: LazyArg<boolean>): Stream<R, E, A>
}
```
