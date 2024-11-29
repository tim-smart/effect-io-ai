# onError

When the `Micro` effect fails, run the given finalizer effect with the
`MicroCause` of the executed effect.

To import and use `onError` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.onError
undefined

**Signature**

```ts
export declare const onError: {
  <A, E, XE, XR>(
    f: (cause: MicroCause<NoInfer<E>>) => Micro<void, XE, XR>
  ): <R>(self: Micro<A, E, R>) => Micro<A, E | XE, R | XR>
  <A, E, R, XE, XR>(
    self: Micro<A, E, R>,
    f: (cause: MicroCause<NoInfer<E>>) => Micro<void, XE, XR>
  ): Micro<A, E | XE, R | XR>
}
```
