# logSpan

Adjusts the label for the current logging span.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const logSpan: {
  (label: string): <R, E, A>(effect: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(effect: Effect<R, E, A>, label: string): Effect<R, E, A>
}
```
