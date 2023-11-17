# every

Determines whether all elements of the `Collection<A>` satisfies the effectual
predicate `f`.

To import and use `every` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.every
```

**Signature**

```ts
export declare const every: {
  <R, E, A>(f: (a: A, i: number) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, boolean>
  <R, E, A>(elements: Iterable<A>, f: (a: A, i: number) => Effect<R, E, boolean>): Effect<R, E, boolean>
}
```
