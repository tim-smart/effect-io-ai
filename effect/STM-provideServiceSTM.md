# provideServiceSTM

Provides the effect with the single service it requires. If the transactional
effect requires more than one service use `provideEnvironment` instead.

To import and use `provideServiceSTM` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.provideServiceSTM
undefined

**Signature**

```ts
export declare const provideServiceSTM: {
  <T extends Context.Tag<any, any>, E1, R1>(
    tag: T,
    stm: STM<Context.Tag.Service<T>, E1, R1>
  ): <A, E, R>(self: STM<A, E, R>) => STM<A, E1 | E, R1 | Exclude<R, Context.Tag.Identifier<T>>>
  <A, E, R, T extends Context.Tag<any, any>, E1, R1>(
    self: STM<A, E, R>,
    tag: T,
    stm: STM<Context.Tag.Service<T>, E1, R1>
  ): STM<A, E | E1, R1 | Exclude<R, Context.Tag.Identifier<T>>>
}
```
