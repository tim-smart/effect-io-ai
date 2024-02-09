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
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<[Effect<A, E, never>, Effect<void, never, never>], never, R>
  <A, E, R>(
    self: Effect<A, E, R>,
    timeToLive: Duration.DurationInput
  ): Effect<[Effect<A, E, never>, Effect<void, never, never>], never, R>
}
```
