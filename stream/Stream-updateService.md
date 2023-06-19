# updateService

Updates the specified service within the context of the `Stream`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const updateService: (<T extends Context.Tag<any, any>>(
  tag: T,
  f: (service: Context.Tag.Service<T>) => Context.Tag.Service<T>
) => <R, E, A>(self: Stream<R, E, A>) => Stream<T | R, E, A>) &
  (<R, E, A, T extends Context.Tag<any, any>>(
    self: Stream<R, E, A>,
    tag: T,
    f: (service: Context.Tag.Service<T>) => Context.Tag.Service<T>
  ) => Stream<R | T, E, A>)
```
