# forEachWhile

A sink that executes the provided effectful function for every element fed
to it until `f` evaluates to `false`.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const forEachWhile: <In, R, E>(
  f: (input: In) => Effect.Effect<R, E, boolean>
) => Sink<R, E, In, In, void>
```
