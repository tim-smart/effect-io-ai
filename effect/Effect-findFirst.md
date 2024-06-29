# findFirst

Returns the first element that satisfies the effectful predicate.

To import and use `findFirst` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.findFirst
```

**Signature**

```ts
export declare const findFirst: {
  <A, E, R>(
    f: (a: NoInfer<A>, i: number) => Effect<boolean, E, R>
  ): (elements: Iterable<A>) => Effect<Option.Option<A>, E, R>
  <A, E, R>(
    elements: Iterable<A>,
    f: (a: NoInfer<A>, i: number) => Effect<boolean, E, R>
  ): Effect<Option.Option<A>, E, R>
}
```
