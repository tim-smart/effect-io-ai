# reverse

Reverses the `Order` of a `Bounded` and flips `maxBound` and `minBound` values.

To import and use `reverse` from the "Bounded" module:

```ts
import * as Bounded from '@effect/data/typeclass/Bounded'

// Can be accessed like this
Bounded.reverse
```

**Signature**

```ts
export declare const reverse: <A>(B: Bounded<A>) => Bounded<A>
```
