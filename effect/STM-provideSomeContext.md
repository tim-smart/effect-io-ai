# provideSomeContext

Splits the context into two parts, providing one part using the
specified layer and leaving the remainder `R0`.

To import and use `provideSomeContext` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.provideSomeContext
```

**Signature**

```ts
export declare const provideSomeContext: {
  <R>(context: Context.Context<R>): <R1, E, A>(self: STM<R1, E, A>) => STM<Exclude<R1, R>, E, A>
  <R, R1, E, A>(self: STM<R1, E, A>, context: Context.Context<R>): STM<Exclude<R1, R>, E, A>
}
```
