# mergeAll

Merges an `Iterable<Effect<A, E, R>>` to a single effect, working
sequentially.

To import and use `mergeAll` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.mergeAll
undefined

**Signature**

```ts
export declare const mergeAll: {
  <Z, Eff extends Effect<any, any, any>>(
    zero: Z,
    f: (z: Z, a: Effect.Success<Eff>, i: number) => Z,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): (elements: Iterable<Eff>) => Effect<Z, Effect.Error<Eff>, Effect.Context<Eff>>
  <Eff extends Effect<any, any, any>, Z>(
    elements: Iterable<Eff>,
    zero: Z,
    f: (z: Z, a: Effect.Success<Eff>, i: number) => Z,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): Effect<Z, Effect.Error<Eff>, Effect.Context<Eff>>
}
```
