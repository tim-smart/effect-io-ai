# updateService

Updates the service with the required service entry.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
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
