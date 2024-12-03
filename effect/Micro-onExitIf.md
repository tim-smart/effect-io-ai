# onExitIf

When the `Micro` effect is completed, run the given finalizer effect if it
matches the specified predicate.

To import and use `onExitIf` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.onExitIf
```

**Signature**

```ts
export declare const onExitIf: {
  <A, E, XE, XR, B extends MicroExit<A, E>>(
    refinement: Refinement<MicroExit<A, E>, B>,
    f: (exit: B) => Micro<void, XE, XR>
  ): <R>(self: Micro<A, E, R>) => Micro<A, E | XE, R | XR>
  <A, E, XE, XR>(
    predicate: Predicate<MicroExit<NoInfer<A>, NoInfer<E>>>,
    f: (exit: MicroExit<NoInfer<A>, NoInfer<E>>) => Micro<void, XE, XR>
  ): <R>(self: Micro<A, E, R>) => Micro<A, E | XE, R | XR>
  <A, E, R, XE, XR, B extends MicroExit<A, E>>(
    self: Micro<A, E, R>,
    refinement: Refinement<MicroExit<A, E>, B>,
    f: (exit: B) => Micro<void, XE, XR>
  ): Micro<A, E | XE, R | XR>
  <A, E, R, XE, XR>(
    self: Micro<A, E, R>,
    predicate: Predicate<MicroExit<NoInfer<A>, NoInfer<E>>>,
    f: (exit: MicroExit<NoInfer<A>, NoInfer<E>>) => Micro<void, XE, XR>
  ): Micro<A, E | XE, R | XR>
}
```
