# withMaxOpsBeforeYield

Sets the maximum number of operations before yield by the default schedulers

To import and use `withMaxOpsBeforeYield` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.withMaxOpsBeforeYield
undefined

**Signature**

```ts
export declare const withMaxOpsBeforeYield: {
  (priority: number): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
  <A, E, R>(self: Effect<A, E, R>, priority: number): Effect<A, E, R>
}
```
