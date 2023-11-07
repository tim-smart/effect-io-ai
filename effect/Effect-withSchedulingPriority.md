# withSchedulingPriority

Sets the scheduling priority used when yielding

To import and use `withSchedulingPriority` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.withSchedulingPriority
```

**Signature**

```ts
export declare const withSchedulingPriority: {
  (priority: number): <R, E, B>(self: Effect<R, E, B>) => Effect<R, E, B>
  <R, E, B>(self: Effect<R, E, B>, priority: number): Effect<R, E, B>
}
```
