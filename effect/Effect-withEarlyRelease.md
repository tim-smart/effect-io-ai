# withEarlyRelease

Returns a new scoped workflow that returns the result of this workflow as
well as a finalizer that can be run to close the scope of this workflow.

To import and use `withEarlyRelease` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.withEarlyRelease
```

**Signature**

```ts
export declare const withEarlyRelease: <A, E, R>(self: Effect<A, E, R>) => Effect<[Effect<void>, A], E, R | Scope.Scope>
```
