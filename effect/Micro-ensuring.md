# ensuring

Regardless of the result of the this `Micro` effect, run the finalizer effect.

To import and use `ensuring` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.ensuring
```

**Signature**

```ts
export declare const ensuring: {
  <XE, XR>(finalizer: Micro<void, XE, XR>): <A, E, R>(self: Micro<A, E, R>) => Micro<A, E | XE, R | XR>
  <A, E, R, XE, XR>(self: Micro<A, E, R>, finalizer: Micro<void, XE, XR>): Micro<A, E | XE, R | XR>
}
```
