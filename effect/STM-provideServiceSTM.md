# provideServiceSTM

Provides the effect with the single service it requires. If the transactional
effect requires more than one service use `provideEnvironment` instead.

To import and use `provideServiceSTM` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.provideServiceSTM
```

**Signature**

```ts
export declare const provideServiceSTM: {
  <I, S, E1, R1>(
    tag: Context.Tag<I, S>,
    stm: STM<NoInfer<S>, E1, R1>
  ): <A, E, R>(self: STM<A, E, R>) => STM<A, E1 | E, R1 | Exclude<R, I>>
  <A, E, R, I, S, E1, R1>(
    self: STM<A, E, R>,
    tag: Context.Tag<I, S>,
    stm: STM<NoInfer<S>, E1, R1>
  ): STM<A, E1 | E, R1 | Exclude<R, I>>
}
```
