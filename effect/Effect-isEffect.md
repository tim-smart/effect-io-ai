# isEffect

This function returns `true` if the specified value is an `Effect` value,
`false` otherwise.

This function can be useful for checking the type of a value before
attempting to operate on it as an `Effect` value. For example, you could use
`isEffect` to check the type of a value before using it as an argument to a
function that expects an `Effect` value.

To import and use `isEffect` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.isEffect
undefined

**Signature**

```ts
export declare const isEffect: (u: unknown) => u is Effect<unknown, unknown, unknown>
```
