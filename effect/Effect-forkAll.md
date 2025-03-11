## forkAll

Returns an effect that forks all of the specified values, and returns a
composite fiber that produces a list of their results, in order.

**Signature**

```ts
declare const forkAll: { (options?: { readonly discard?: false | undefined; } | undefined): <Eff extends Effect<any, any, any>>(effects: Iterable<Eff>) => Effect<Fiber.Fiber<Array<Effect.Success<Eff>>, Effect.Error<Eff>>, never, Effect.Context<Eff>>; (options: { readonly discard: true; }): <Eff extends Effect<any, any, any>>(effects: Iterable<Eff>) => Effect<void, never, Effect.Context<Eff>>; <Eff extends Effect<any, any, any>>(effects: Iterable<Eff>, options?: { readonly discard?: false | undefined; } | undefined): Effect<Fiber.Fiber<Array<Effect.Success<Eff>>, Effect.Error<Eff>>, never, Effect.Context<Eff>>; <Eff extends Effect<any, any, any>>(effects: Iterable<Eff>, options: { readonly discard: true; }): Effect<void, never, Effect.Context<Eff>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6186)

Since v2.0.0