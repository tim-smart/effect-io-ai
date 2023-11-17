# cachedFunction

Returns a memoized version of the specified effectual function.

To import and use `cachedFunction` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.cachedFunction
```

**Signature**

```ts
export declare const cachedFunction: <R, E, A, B>(
  f: (a: A) => Effect<R, E, B>,
  eq?: Equivalence<A> | undefined
) => Effect<never, never, (a: A) => Effect<R, E, B>>
```
