# withSchedulingPriority

Sets the scheduling priority used when yielding

To import and use `withSchedulingPriority` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.withSchedulingPriority
undefined

**Signature**

```ts
export declare const withSchedulingPriority: {
  (priority: number): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
  <A, E, R>(self: Effect<A, E, R>, priority: number): Effect<A, E, R>
}
```
