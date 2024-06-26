# catchUnexpected

Catch any unexpected errors of the given `Micro` effect, allowing you to recover from them.

To import and use `catchUnexpected` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.catchUnexpected
```

**Signature**

```ts
export declare const catchUnexpected: {
  <E, B, E2, R2>(f: (defect: unknown) => Micro<B, E2, R2>): <A, R>(self: Micro<A, E, R>) => Micro<B | A, E | E2, R2 | R>
  <A, E, R, B, E2, R2>(self: Micro<A, E, R>, f: (defect: unknown) => Micro<B, E2, R2>): Micro<A | B, E | E2, R | R2>
}
```
