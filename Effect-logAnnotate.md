# logAnnotate

Annotates each log in this effect with the specified log annotation.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const logAnnotate: {
  (key: string, value: string): <R, E, A>(effect: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(effect: Effect<R, E, A>, key: string, value: string): Effect<R, E, A>
}
```
