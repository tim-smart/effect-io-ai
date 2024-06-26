# onFailure

When the `Micro` effect fails, run the given finalizer effect with the
`Failure` of the executed effect.

To import and use `onFailure` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.onFailure
```

**Signature**

```ts
export declare const onFailure: {
  <A, E, XE, XR>(
    f: (failure: Failure<NoInfer<E>>) => Micro<void, XE, XR>
  ): <R>(self: Micro<A, E, R>) => Micro<A, E | XE, XR | R>
  <A, E, R, XE, XR>(
    self: Micro<A, E, R>,
    f: (failure: Failure<NoInfer<E>>) => Micro<void, XE, XR>
  ): Micro<A, E | XE, R | XR>
}
```
