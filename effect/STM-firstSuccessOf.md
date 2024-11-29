# firstSuccessOf

This function takes an iterable of `STM` values and returns a new
`STM` value that represents the first `STM` value in the iterable
that succeeds. If all of the `Effect` values in the iterable fail, then
the resulting `STM` value will fail as well.

This function is sequential, meaning that the `STM` values in the
iterable will be executed in sequence, and the first one that succeeds
will determine the outcome of the resulting `STM` value.

To import and use `firstSuccessOf` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.firstSuccessOf
undefined

**Signature**

```ts
export declare const firstSuccessOf: <A, E, R>(effects: Iterable<STM<A, E, R>>) => STM<A, E, R>
```
