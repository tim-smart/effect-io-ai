# mapInputContext

Transforms the environment being provided to this effect with the specified
function.

To import and use `mapInputContext` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.mapInputContext
```

**Signature**

```ts
export declare const mapInputContext: {
  <R0, R>(f: (context: Context.Context<R0>) => Context.Context<R>): <A, E>(self: STM<A, E, R>) => STM<A, E, R0>
  <A, E, R0, R>(self: STM<A, E, R>, f: (context: Context.Context<R0>) => Context.Context<R>): STM<A, E, R0>
}
```
