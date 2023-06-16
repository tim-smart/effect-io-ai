# filterMapEffect

Returns a filtered, mapped subset of the elements of the iterable based on a
partial function.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.filterMapEffect`.

### Signature

```typescript
export declare const filterMapEffect: {
  <A, R, E, B>(f: (a: A) => Option.Option<Effect<R, E, B>>): (elements: Iterable<A>) => Effect<R, E, B[]>
  <A, R, E, B>(elements: Iterable<A>, f: (a: A) => Option.Option<Effect<R, E, B>>): Effect<R, E, B[]>
}
```
