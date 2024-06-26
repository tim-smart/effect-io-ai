# catchExpected

Catch the error of the given `Micro` effect, allowing you to recover from it.

It only catches expected (`FailureExpected`) errors.

To import and use `catchExpected` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.catchExpected
```

**Signature**

```ts
export declare const catchExpected: {
  <E, B, E2, R2>(f: (e: NoInfer<E>) => Micro<B, E2, R2>): <A, R>(self: Micro<A, E, R>) => Micro<B | A, E2, R2 | R>
  <A, E, R, B, E2, R2>(self: Micro<A, E, R>, f: (e: NoInfer<E>) => Micro<B, E2, R2>): Micro<A | B, E2, R | R2>
}
```
