# reduceWithContext

Reduces the specified cause into a value of type `Z` using a `Cause.Reducer`.
Also allows for accessing the provided context during reduction.

To import and use `reduceWithContext` from the "Cause" module:

ts
import \* as Cause from "effect/Cause"
// Can be accessed like this
Cause.reduceWithContext
undefined

**Signature**

```ts
export declare const reduceWithContext: {
  <C, E, Z>(context: C, reducer: CauseReducer<C, E, Z>): (self: Cause<E>) => Z
  <C, E, Z>(self: Cause<E>, context: C, reducer: CauseReducer<C, E, Z>): Z
}
```
