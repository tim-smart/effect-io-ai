# provideService

Provides the effect with the single service it requires. If the transactional
effect requires more than one service use `provideEnvironment` instead.

To import and use `provideService` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.provideService
```

**Signature**

```ts
export declare const provideService: {
  <I, S>(tag: Context.Tag<I, S>, resource: NoInfer<S>): <A, E, R>(self: STM<A, E, R>) => STM<A, E, Exclude<R, I>>
  <A, E, R, I, S>(self: STM<A, E, R>, tag: Context.Tag<I, S>, resource: NoInfer<S>): STM<A, E, Exclude<R, I>>
}
```
