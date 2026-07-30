Package: `effect`<br />
Module: `Stream`<br />

## Stream.updateService

Updates the specified service within the context of the `Stream`.

**Signature**

```ts
declare const updateService: { <I, S>(tag: Context.Tag<I, S>, f: (service: NoInfer<S>) => NoInfer<S>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, I | R>; <A, E, R, I, S>(self: Stream<A, E, R>, tag: Context.Tag<I, S>, f: (service: NoInfer<S>) => NoInfer<S>): Stream<A, E, I | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5533)

Since v2.0.0