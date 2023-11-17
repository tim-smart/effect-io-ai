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
  <R0, R>(f: (context: Context.Context<R0>) => Context.Context<R>): <E, A>(self: STM<R, E, A>) => STM<R0, E, A>
  <E, A, R0, R>(self: STM<R, E, A>, f: (context: Context.Context<R0>) => Context.Context<R>): STM<R0, E, A>
}
```
