# findFirst

Returns the first element that satisfies the effectful predicate.

To import and use `findFirst` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.findFirst
```

**Signature**

```ts
export declare const findFirst: {
  <A, R, E>(f: (a: A, i: number) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, Option.Option<A>>
  <A, R, E>(elements: Iterable<A>, f: (a: A, i: number) => Effect<R, E, boolean>): Effect<R, E, Option.Option<A>>
}
```
