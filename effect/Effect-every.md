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
  <A, E, R>(f: (a: A, i: number) => Effect<boolean, E, R>): (elements: Iterable<A>) => Effect<boolean, E, R>
  <A, E, R>(elements: Iterable<A>, f: (a: A, i: number) => Effect<boolean, E, R>): Effect<boolean, E, R>
}
```
