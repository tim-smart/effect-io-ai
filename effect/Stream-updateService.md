# updateService

Updates the specified service within the context of the `Stream`.

To import and use `updateService` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.updateService
undefined

**Signature**

```ts
export declare const updateService: {
  <T extends Context.Tag<any, any>>(
    tag: T,
    f: (service: Context.Tag.Service<T>) => Context.Tag.Service<T>
  ): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, T | R>
  <A, E, R, T extends Context.Tag<any, any>>(
    self: Stream<A, E, R>,
    tag: T,
    f: (service: Context.Tag.Service<T>) => Context.Tag.Service<T>
  ): Stream<A, E, R | T>
}
```
