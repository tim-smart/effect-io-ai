# catchAll

Catch the error of the given `Micro` effect, allowing you to recover from it.

It only catches expected (`MicroCause.Fail`) errors.

To import and use `catchAll` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.catchAll
```

**Signature**

```ts
export declare const catchAll: {
  <E, B, E2, R2>(f: (e: NoInfer<E>) => Micro<B, E2, R2>): <A, R>(self: Micro<A, E, R>) => Micro<A | B, E2, R | R2>
  <A, E, R, B, E2, R2>(self: Micro<A, E, R>, f: (e: NoInfer<E>) => Micro<B, E2, R2>): Micro<A | B, E2, R | R2>
}
```
