# cachedInvalidateWithTTL

Returns an effect that, if evaluated, will return the cached result of this
effect. Cached results will expire after `timeToLive` duration. In
addition, returns an effect that can be used to invalidate the current
cached value before the `timeToLive` duration expires.

To import and use `cachedInvalidateWithTTL` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.cachedInvalidateWithTTL
```

**Signature**

```ts
export declare const cachedInvalidateWithTTL: {
  (
    timeToLive: Duration.DurationInput
  ): <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, [Effect<never, E, A>, Effect<never, never, void>]>
  <R, E, A>(
    self: Effect<R, E, A>,
    timeToLive: Duration.DurationInput
  ): Effect<R, never, [Effect<never, E, A>, Effect<never, never, void>]>
}
```
