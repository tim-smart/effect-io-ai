# provideServiceSTM

Provides the effect with the single service it requires. If the transactional
effect requires more than one service use `provideEnvironment` instead.

To import and use `provideServiceSTM` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.provideServiceSTM
```

**Signature**

```ts
export declare const provideServiceSTM: {
  <T extends Context.Tag<any, any>, R1, E1>(tag: T, stm: STM<R1, E1, Context.Tag.Service<T>>): <R, E, A>(
    self: STM<R, E, A>
  ) => STM<R1 | Exclude<R, Context.Tag.Identifier<T>>, E1 | E, A>
  <R, E, A, T extends Context.Tag<any, any>, R1, E1>(
    self: STM<R, E, A>,
    tag: T,
    stm: STM<R1, E1, Context.Tag.Service<T>>
  ): STM<R1 | Exclude<R, Context.Tag.Identifier<T>>, E | E1, A>
}
```
