# allSuccessesPar

Evaluate and run each effect in the structure in parallel and collect the
results, discarding results from failed effects.

To import and use `allSuccessesPar` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.allSuccessesPar
```

**Signature**

```ts
export declare const allSuccessesPar: <R, E, A>(elements: Iterable<Effect<R, E, A>>) => Effect<R, never, A[]>
```
