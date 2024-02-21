# provideService

Returns a new schedule with the single service it requires provided to it.
If the schedule requires multiple services use `provideContext`
instead.

To import and use `provideService` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.provideService
```

**Signature**

```ts
export declare const provideService: {
  <T extends Context.Tag<any, any>>(
    tag: T,
    service: Context.Tag.Service<T>
  ): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, Exclude<R, Context.Tag.Identifier<T>>>
  <Out, In, R, T extends Context.Tag<any, any>>(
    self: Schedule<Out, In, R>,
    tag: T,
    service: Context.Tag.Service<T>
  ): Schedule<Out, In, Exclude<R, Context.Tag.Identifier<T>>>
}
```
