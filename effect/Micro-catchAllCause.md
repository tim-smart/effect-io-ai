# catchAllCause

Catch the full `MicroCause` object of the given `Micro` effect, allowing you to
recover from any kind of cause.

To import and use `catchAllCause` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.catchAllCause
```

**Signature**

```ts
export declare const catchAllCause: {
  <E, B, E2, R2>(
    f: (cause: MicroCause<E>) => Micro<B, E2, R2>
  ): <A, R>(self: Micro<A, E, R>) => Micro<B | A, E2, R2 | R>
  <A, E, R, B, E2, R2>(self: Micro<A, E, R>, f: (cause: MicroCause<E>) => Micro<B, E2, R2>): Micro<A | B, E2, R | R2>
}
```
