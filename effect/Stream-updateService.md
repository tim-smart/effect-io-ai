# updateService

Updates the specified service within the context of the `Stream`.

To import and use `updateService` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.updateService
```

**Signature**

```ts
export declare const updateService: {
  <I, S>(
    tag: Context.Tag<I, S>,
    f: (service: NoInfer<S>) => NoInfer<S>
  ): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, I | R>
  <A, E, R, I, S>(
    self: Stream<A, E, R>,
    tag: Context.Tag<I, S>,
    f: (service: NoInfer<S>) => NoInfer<S>
  ): Stream<A, E, I | R>
}
```
