## provideServiceEffect

Create a service using the provided `Micro` effect, and add it to the
current context.

**Signature**

```ts
declare const provideServiceEffect: { <I, S, E2, R2>(tag: Context.Tag<I, S>, acquire: Micro<S, E2, R2>): <A, E, R>(self: Micro<A, E, R>) => Micro<A, E | E2, Exclude<R, I> | R2>; <A, E, R, I, S, E2, R2>(self: Micro<A, E, R>, tag: Context.Tag<I, S>, acquire: Micro<S, E2, R2>): Micro<A, E | E2, Exclude<R, I> | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2001)

Since v3.4.6