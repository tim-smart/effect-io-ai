# ignoreLogged

Ignores the result of an effect but logs any failures.

**Details**

This function takes an effect and returns a new effect that ignores whether
the original effect succeeds or fails. However, if the effect fails, it will
log the failure at the Debug level, so you can keep track of any issues that
arise.

**When to Use**

This is useful in scenarios where you want to continue with your program
regardless of the result of the effect, but you still want to be aware of
potential failures that may need attention later.

To import and use `ignoreLogged` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.ignoreLogged
```

**Signature**

```ts
export declare const ignoreLogged: <A, E, R>(self: Effect<A, E, R>) => Effect<void, never, R>
```
