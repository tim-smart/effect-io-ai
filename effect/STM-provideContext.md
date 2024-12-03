# provideContext

Provides the transaction its required environment, which eliminates its
dependency on `R`.

To import and use `provideContext` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.provideContext
```

**Signature**

```ts
export declare const provideContext: {
  <R>(env: Context.Context<R>): <A, E>(self: STM<A, E, R>) => STM<A, E>
  <A, E, R>(self: STM<A, E, R>, env: Context.Context<R>): STM<A, E>
}
```
