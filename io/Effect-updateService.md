# updateService

Updates the service with the required service entry.

To import and use `updateService` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.updateService
```

**Signature**

```ts
export declare const updateService: {
  <T extends Context.Tag<any, any>>(tag: T, f: (service: Context.Tag.Service<T>) => Context.Tag.Service<T>): <R, E, A>(
    self: Effect<R, E, A>
  ) => Effect<R | Context.Tag.Identifier<T>, E, A>
  <R, E, A, T extends Context.Tag<any, any>>(
    self: Effect<R, E, A>,
    tag: T,
    f: (service: Context.Tag.Service<T>) => Context.Tag.Service<T>
  ): Effect<R | Context.Tag.Identifier<T>, E, A>
}
```
