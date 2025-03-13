Package: `effect`<br />
Module: `Effect`<br />

## Effect.updateService

Updates a service in the context with a new implementation.

**Details**

This function modifies the existing implementation of a service in the
context. It retrieves the current service, applies the provided
transformation function `f`, and replaces the old service with the
transformed one.

**When to Use**

This is useful for adapting or extending a service's behavior during the
execution of an effect.

**Signature**

```ts
declare const updateService: { <I, S>(tag: Context.Tag<I, S>, f: (service: NoInfer<S>) => NoInfer<S>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R | I>; <A, E, R, I, S>(self: Effect<A, E, R>, tag: Context.Tag<I, S>, f: (service: NoInfer<S>) => NoInfer<S>): Effect<A, E, R | I>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L7632)

Since v2.0.0