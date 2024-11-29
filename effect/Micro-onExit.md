# onExit

When the `Micro` effect is completed, run the given finalizer effect with the
`MicroExit` of the executed effect.

To import and use `onExit` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.onExit
undefined

**Signature**

```ts
export declare const onExit: {
  <A, E, XE, XR>(
    f: (exit: MicroExit<A, E>) => Micro<void, XE, XR>
  ): <R>(self: Micro<A, E, R>) => Micro<A, E | XE, R | XR>
  <A, E, R, XE, XR>(self: Micro<A, E, R>, f: (exit: MicroExit<A, E>) => Micro<void, XE, XR>): Micro<A, E | XE, R | XR>
}
```
