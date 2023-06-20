# collectWhile

Transforms all elements of the chunk for as long as the specified partial
function is defined.

To import and use `collectWhile` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.collectWhile
```

**Signature**

```ts
export declare const collectWhile: {
  <A, R, E, B>(f: (a: A) => Option.Option<Effect<R, E, B>>): (elements: Iterable<A>) => Effect<R, E, B[]>
  <A, R, E, B>(elements: Iterable<A>, f: (a: A) => Option.Option<Effect<R, E, B>>): Effect<R, E, B[]>
}
```
