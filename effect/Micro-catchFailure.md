# catchFailure

Catch the full `Failure` object of the given `Micro` effect, allowing you to
recover from any kind of failure.

To import and use `catchFailure` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.catchFailure
```

**Signature**

```ts
export declare const catchFailure: {
  <E, B, E2, R2>(f: (failure: Failure<E>) => Micro<B, E2, R2>): <A, R>(self: Micro<A, E, R>) => Micro<B | A, E2, R2 | R>
  <A, E, R, B, E2, R2>(self: Micro<A, E, R>, f: (failure: Failure<E>) => Micro<B, E2, R2>): Micro<A | B, E2, R | R2>
}
```
