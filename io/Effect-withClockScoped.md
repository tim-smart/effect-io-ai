# withClockScoped

Sets the implementation of the clock service to the specified value and
restores it to its original value when the scope is closed.

To import and use `withClockScoped` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.withClockScoped
```

**Signature**

```ts
export declare const withClockScoped: <A extends Clock.Clock>(value: A) => Effect<Scope.Scope, never, void>
```
