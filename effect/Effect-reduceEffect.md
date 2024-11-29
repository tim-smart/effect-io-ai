# reduceEffect

Reduces an `Iterable<Effect<A, E, R>>` to a single effect.

To import and use `reduceEffect` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.reduceEffect
undefined

**Signature**

```ts
export declare const reduceEffect: {
  <Z, E, R, Eff extends Effect<any, any, any>>(
    zero: Effect<Z, E, R>,
    f: (acc: NoInfer<Z>, a: Effect.Success<Eff>, i: number) => Z,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): (elements: Iterable<Eff>) => Effect<Z, E | Effect.Error<Eff>, R | Effect.Context<Eff>>
  <Eff extends Effect<any, any, any>, Z, E, R>(
    elements: Iterable<Eff>,
    zero: Effect<Z, E, R>,
    f: (acc: NoInfer<Z>, a: Effect.Success<Eff>, i: number) => Z,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): Effect<Z, E | Effect.Error<Eff>, R | Effect.Context<Eff>>
}
```
