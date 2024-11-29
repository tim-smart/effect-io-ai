# currentTimeMillis

Accesses the current time of a `TestClock` instance in the context in
milliseconds.

To import and use `currentTimeMillis` from the "TestClock" module:

ts
import \* as TestClock from "effect/TestClock"
// Can be accessed like this
TestClock.currentTimeMillis
undefined

**Signature**

```ts
export declare const currentTimeMillis: Effect.Effect<number, never, never>
```
