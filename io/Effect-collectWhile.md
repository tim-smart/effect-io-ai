# collectWhile

Transforms all elements of the chunk for as long as the specified partial
function is defined.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const collectWhile: {
  <A, R, E, B>(f: (a: A) => Option.Option<Effect<R, E, B>>): (elements: Iterable<A>) => Effect<R, E, B[]>
  <A, R, E, B>(elements: Iterable<A>, f: (a: A) => Option.Option<Effect<R, E, B>>): Effect<R, E, B[]>
}
```
