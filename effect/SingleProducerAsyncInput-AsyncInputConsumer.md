## AsyncInputConsumer

Consumer-side view of `SingleProducerAsyncInput` for variance purposes.

**Signature**

```ts
export interface AsyncInputConsumer<out Err, out Elem, out Done> {
  takeWith<A>(
    onError: (cause: Cause.Cause<Err>) => A,
    onElement: (element: Elem) => A,
    onDone: (value: Done) => A
  ): Effect.Effect<A>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SingleProducerAsyncInput.ts#L55)

Since v2.0.0