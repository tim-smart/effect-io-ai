# collectAllPar

Collects the all element of the `Collection<A>` for which the effect returns a value.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const collectAllPar: <R, E, A>(elements: Iterable<Effect<R, E, Option.Option<A>>>) => Effect<R, E, A[]>
```
