# onResultIf

When the `Micro` effect is completed, run the given finalizer effect if it
matches the specified predicate.

To import and use `onResultIf` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.onResultIf
```

**Signature**

```ts
export declare const onResultIf: {
  <A, E, XE, XR, B extends Result<A, E>>(
    refinement: Refinement<Result<A, E>, B>,
    f: (result: B) => Micro<void, XE, XR>
  ): <R>(self: Micro<A, E, R>) => Micro<A, E | XE, XR | R>
  <A, E, XE, XR>(
    predicate: Predicate<Result<NoInfer<A>, NoInfer<E>>>,
    f: (result: Result<NoInfer<A>, NoInfer<E>>) => Micro<void, XE, XR>
  ): <R>(self: Micro<A, E, R>) => Micro<A, E | XE, XR | R>
  <A, E, R, XE, XR, B extends Result<A, E>>(
    self: Micro<A, E, R>,
    refinement: Refinement<Result<A, E>, B>,
    f: (result: B) => Micro<void, XE, XR>
  ): Micro<A, E | XE, R | XR>
  <A, E, R, XE, XR>(
    self: Micro<A, E, R>,
    predicate: Predicate<Result<NoInfer<A>, NoInfer<E>>>,
    f: (result: Result<NoInfer<A>, NoInfer<E>>) => Micro<void, XE, XR>
  ): Micro<A, E | XE, R | XR>
}
```
