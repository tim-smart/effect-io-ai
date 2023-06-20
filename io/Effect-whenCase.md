# whenCase

Runs an effect when the supplied partial function matches for the given
value, otherwise does nothing.

To import and use `whenCase` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.whenCase
```

**Signature**

```ts
export declare const whenCase: <R, E, A, B>(
  evaluate: LazyArg<A>,
  pf: (a: A) => Option.Option<Effect<R, E, B>>
) => Effect<R, E, Option.Option<B>>
```
