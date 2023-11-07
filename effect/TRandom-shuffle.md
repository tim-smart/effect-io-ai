# shuffle

Uses the pseudo-random number generator to shuffle the specified iterable.

To import and use `shuffle` from the "TRandom" module:

```ts
import * as TRandom from 'effect/TRandom'

// Can be accessed like this
TRandom.shuffle
```

**Signature**

```ts
export declare const shuffle: <A>(elements: Iterable<A>) => STM.STM<TRandom, never, A[]>
```
