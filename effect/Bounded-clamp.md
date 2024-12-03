# clamp

Clamp a value between `minBound` and `maxBound` values.

To import and use `clamp` from the "Bounded" module:

```ts
import * as Bounded from "@effect/typeclass/Bounded"
// Can be accessed like this
Bounded.clamp
```

**Signature**

```ts
export declare const clamp: <A>(B: Bounded<A>) => (a: A) => A
```
