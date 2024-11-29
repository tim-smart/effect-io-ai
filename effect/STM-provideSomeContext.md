# provideSomeContext

Splits the context into two parts, providing one part using the
specified layer and leaving the remainder `R0`.

To import and use `provideSomeContext` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.provideSomeContext
undefined

**Signature**

```ts
export declare const provideSomeContext: {
  <R>(context: Context.Context<R>): <R1, E, A>(self: STM<A, E, R1>) => STM<A, E, Exclude<R1, R>>
  <R, R1, E, A>(self: STM<A, E, R1>, context: Context.Context<R>): STM<A, E, Exclude<R1, R>>
}
```
