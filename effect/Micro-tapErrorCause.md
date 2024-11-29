# tapErrorCause

Perform a side effect using the full `MicroCause` object of the given `Micro`.

To import and use `tapErrorCause` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.tapErrorCause
undefined

**Signature**

```ts
export declare const tapErrorCause: {
  <E, B, E2, R2>(
    f: (cause: NoInfer<MicroCause<E>>) => Micro<B, E2, R2>
  ): <A, R>(self: Micro<A, E, R>) => Micro<A, E | E2, R | R2>
  <A, E, R, B, E2, R2>(
    self: Micro<A, E, R>,
    f: (cause: NoInfer<MicroCause<E>>) => Micro<B, E2, R2>
  ): Micro<A, E | E2, R | R2>
}
```
