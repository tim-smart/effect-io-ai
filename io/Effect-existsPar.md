# existsPar

Determines whether any element of the `Iterable<A>` satisfies the effectual
predicate `f`, working in parallel. Interrupts all effects on any failure or
finding an element that satisfies the predicate.

To import and use `existsPar` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.existsPar
```

**Signature**

```ts
export declare const existsPar: {
  <R, E, A>(f: (a: A) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, boolean>
  <R, E, A>(elements: Iterable<A>, f: (a: A) => Effect<R, E, boolean>): Effect<R, E, boolean>
}
```
