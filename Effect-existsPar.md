# existsPar

Determines whether any element of the `Iterable<A>` satisfies the effectual
predicate `f`, working in parallel. Interrupts all effects on any failure or
finding an element that satisfies the predicate.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const existsPar: {
  <R, E, A>(f: (a: A) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, boolean>
  <R, E, A>(elements: Iterable<A>, f: (a: A) => Effect<R, E, boolean>): Effect<R, E, boolean>
}
```
