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
export declare const cachedFunction: <A, B, E, R>(
  f: (a: A) => Effect<B, E, R>,
  eq?: Equivalence<A> | undefined
) => Effect<(a: A) => Effect<B, E, R>, never, never>
```
