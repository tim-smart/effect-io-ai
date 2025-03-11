## onError

When the `Micro` effect fails, run the given finalizer effect with the
`MicroCause` of the executed effect.

**Signature**

```ts
declare const onError: { <A, E, XE, XR>(f: (cause: MicroCause<NoInfer<E>>) => Micro<void, XE, XR>): <R>(self: Micro<A, E, R>) => Micro<A, E | XE, R | XR>; <A, E, R, XE, XR>(self: Micro<A, E, R>, f: (cause: MicroCause<NoInfer<E>>) => Micro<void, XE, XR>): Micro<A, E | XE, R | XR>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L3558)

Since v3.4.6