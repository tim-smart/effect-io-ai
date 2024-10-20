# filterMap

Performs a filter and map in a single step.

To import and use `filterMap` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.filterMap
```

**Signature**

```ts
export declare const filterMap: {
  <Eff extends Effect<any, any, any>, B>(
    pf: (a: Effect.Success<Eff>) => Option.Option<B>
  ): (elements: Iterable<Eff>) => Effect<Array<B>, Effect.Error<Eff>, Effect.Context<Eff>>
  <Eff extends Effect<any, any, any>, B>(
    elements: Iterable<Eff>,
    pf: (a: Effect.Success<Eff>) => Option.Option<B>
  ): Effect<Array<B>, Effect.Error<Eff>, Effect.Context<Eff>>
}
```
