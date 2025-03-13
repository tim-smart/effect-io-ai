Package: `effect`<br />
Module: `Effect`<br />

## Effect.provideServiceEffect

Dynamically provides an implementation for a service using an effect.

**Details**

This function allows you to provide an implementation for a service
dynamically by using another effect. The provided effect is executed to
produce the service implementation, which is then made available to the
consuming effect. This is particularly useful when the service implementation
itself requires asynchronous or resource-intensive initialization.

For example, you can use this function to lazily initialize a database
connection or fetch configuration values from an external source before
making the service available to your effect.

**Signature**

```ts
declare const provideServiceEffect: { <I, S, E1, R1>(tag: Context.Tag<I, S>, effect: Effect<NoInfer<S>, E1, R1>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E | E1, R1 | Exclude<R, I>>; <A, E, R, I, S, E1, R1>(self: Effect<A, E, R>, tag: Context.Tag<I, S>, effect: Effect<NoInfer<S>, E1, R1>): Effect<A, E | E1, R1 | Exclude<R, I>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L7491)

Since v2.0.0