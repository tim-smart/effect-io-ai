# cachedWithTTL

Returns an effect that, if evaluated, will return the cached result of this
effect. Cached results will expire after `timeToLive` duration.

To import and use `cachedWithTTL` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.cachedWithTTL
```

**Signature**

```ts
export declare const cachedWithTTL: {
  (timeToLive: Duration.DurationInput): <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, Effect<never, E, A>>
  <R, E, A>(self: Effect<R, E, A>, timeToLive: Duration.DurationInput): Effect<R, never, Effect<never, E, A>>
}
```
