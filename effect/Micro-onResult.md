# onResult

When the `Micro` effect is completed, run the given finalizer effect with the
`Result` of the executed effect.

To import and use `onResult` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.onResult
```

**Signature**

```ts
export declare const onResult: {
  <A, E, XE, XR>(
    f: (result: Result<A, E>) => Micro<void, XE, XR>
  ): <R>(self: Micro<A, E, R>) => Micro<A, E | XE, XR | R>
  <A, E, R, XE, XR>(self: Micro<A, E, R>, f: (result: Result<A, E>) => Micro<void, XE, XR>): Micro<A, E | XE, R | XR>
}
```
