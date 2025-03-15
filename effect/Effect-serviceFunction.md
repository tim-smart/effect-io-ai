Package: `effect`<br />
Module: `Effect`<br />

## Effect.serviceFunction

Creates a function that uses a service from the context to produce a value.

**See**

- `serviceFunctionEffect` for a version that returns an effect.

**Signature**

```ts
declare const serviceFunction: <T extends Effect<any, any, any>, Args extends Array<any>, A>(getService: T, f: (_: Effect.Success<T>) => (...args: Args) => A) => (...args: Args) => Effect<A, Effect.Error<T>, Effect.Context<T>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L7649)

Since v2.0.0