# filterMapEffect

Returns a filtered, mapped subset of the elements of the iterable based on a
partial function.

To import and use `filterMapEffect` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.filterMapEffect
```

**Signature**

```ts
export declare const filterMapEffect: {
  <A, R, E, B>(f: (a: A) => Option.Option<Effect<R, E, B>>): (elements: Iterable<A>) => Effect<R, E, B[]>
  <A, R, E, B>(elements: Iterable<A>, f: (a: A) => Option.Option<Effect<R, E, B>>): Effect<R, E, B[]>
}
```
