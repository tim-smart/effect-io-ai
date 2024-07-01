# onInterrupt

If this `Micro` effect is aborted, run the finalizer effect.

To import and use `onInterrupt` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.onInterrupt
```

**Signature**

```ts
export declare const onInterrupt: {
  <XE, XR>(finalizer: Micro<void, XE, XR>): <A, E, R>(self: Micro<A, E, R>) => Micro<A, XE | E, XR | R>
  <A, E, R, XE, XR>(self: Micro<A, E, R>, finalizer: Micro<void, XE, XR>): Micro<A, E | XE, R | XR>
}
```
