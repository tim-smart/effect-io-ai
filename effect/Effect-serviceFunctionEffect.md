Package: `effect`<br />
Module: `Effect`<br />

## Effect.serviceFunctionEffect

Creates a function that uses a service from the context to produce an effect.

**See**

- `serviceFunction` for a version that returns a value.

**Signature**

```ts
declare const serviceFunctionEffect: <T extends Effect<any, any, any>, Args extends Array<any>, A, E, R>(getService: T, f: (_: Effect.Success<T>) => (...args: Args) => Effect<A, E, R>) => (...args: Args) => Effect<A, E | Effect.Error<T>, R | Effect.Context<T>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L7699)

Since v2.0.0