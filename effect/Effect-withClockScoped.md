# withClockScoped

Sets the implementation of the `Clock` service to the specified value and
restores it to its original value when the scope is closed.

To import and use `withClockScoped` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.withClockScoped
```

**Signature**

```ts
export declare const withClockScoped: <C extends Clock.Clock>(clock: C) => Effect<void, never, Scope.Scope>
```
