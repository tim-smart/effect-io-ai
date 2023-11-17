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
  <T extends Context.Tag<any, any>>(
    tag: T,
    resource: Context.Tag.Service<T>
  ): <R, E, A>(self: STM<R, E, A>) => STM<Exclude<R, Context.Tag.Identifier<T>>, E, A>
  <R, E, A, T extends Context.Tag<any, any>>(
    self: STM<R, E, A>,
    tag: T,
    resource: Context.Tag.Service<T>
  ): STM<Exclude<R, Context.Tag.Identifier<T>>, E, A>
}
```
