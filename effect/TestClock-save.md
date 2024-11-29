# save

Accesses a `TestClock` instance in the context and saves the clock
state in an effect which, when run, will restore the `TestClock` to the
saved state.

To import and use `save` from the "TestClock" module:

ts
import \* as TestClock from "effect/TestClock"
// Can be accessed like this
TestClock.save
undefined

**Signature**

```ts
export declare const save: () => Effect.Effect<Effect.Effect<void>>
```
