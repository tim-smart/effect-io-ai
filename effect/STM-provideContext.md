# provideContext

Provides the transaction its required environment, which eliminates its
dependency on `R`.

To import and use `provideContext` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.provideContext
```

**Signature**

```ts
export declare const provideContext: {
  <R>(env: Context.Context<R>): <E, A>(self: STM<R, E, A>) => STM<never, E, A>
  <E, A, R>(self: STM<R, E, A>, env: Context.Context<R>): STM<never, E, A>
}
```
