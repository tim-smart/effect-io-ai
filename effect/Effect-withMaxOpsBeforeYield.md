# withMaxOpsBeforeYield

Sets the maximum number of operations before yield by the default schedulers

To import and use `withMaxOpsBeforeYield` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.withMaxOpsBeforeYield
```

**Signature**

```ts
export declare const withMaxOpsBeforeYield: {
  (priority: number): <R, E, B>(self: Effect<R, E, B>) => Effect<R, E, B>
  <R, E, B>(self: Effect<R, E, B>, priority: number): Effect<R, E, B>
}
```
